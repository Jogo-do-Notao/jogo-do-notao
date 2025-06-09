package com.poliedro.jogodonotao.database.dao;

import com.poliedro.jogodonotao.agrupadores.Materia;
import com.poliedro.jogodonotao.database.ConexaoDB;
import com.poliedro.jogodonotao.jogo.Partida;
import com.poliedro.jogodonotao.pergunta.DificuldadePergunta;
import com.poliedro.jogodonotao.pergunta.Alternativa;
import com.poliedro.jogodonotao.pergunta.Pergunta;
import com.poliedro.jogodonotao.usuario.Professor;

import java.sql.*;
import java.util.*;

/**
 * Classe DAO para a entidade Pergunta.
 * Responsável por obter e manipular os dados da tabela {@code pergunta} no banco de dados.
 */
public class PerguntaDAO {
    /**
     * Colunas da tabela {@code aluno}.
     */
    private enum PerguntaColuna {
        // Colunas
        ID("id_pergunta"),
        MATERIA("id_materia"),
        CRIADOR("criador"),
        ENUNCIADO("titulo"),
        DIFICULDADE("dificuldade"),
        DICA("dica");

        // Construtor
        private final String coluna;

        PerguntaColuna(String coluna) {
            this.coluna = coluna;
        }

        // Getter do valor
        public String get() {
            return coluna;
        }
    }

    public static ArrayList<Pergunta> obterPerguntas() throws SQLException {
        ArrayList<Pergunta> perguntas = new ArrayList<>();

        try (Connection conexao = ConexaoDB.getConnection()) {
            // Primeiro, obtemos todas as perguntas
            String sqlPerguntas = "SELECT pergunta.*, professor.nome as nome_criador FROM pergunta " +
                    "LEFT JOIN professor ON criador = professor.id_professor";

            try (PreparedStatement stmt = conexao.prepareStatement(sqlPerguntas);
                 ResultSet res = stmt.executeQuery()) {

                // Coletamos os dados básicos das perguntas
                List<Integer> ids = new ArrayList<>();
                Map<Integer, String> titulos = new HashMap<>();
                Map<Integer, String> dicas = new HashMap<>();
                Map<Integer, String> dificuldades = new HashMap<>();
                Map<Integer, Integer> materiasIds = new HashMap<>();
                Map<Integer, String> nomesCriadores = new HashMap<>();

                while (res.next()) {
                    int id = res.getInt("id_pergunta");
                    ids.add(id);
                    titulos.put(id, res.getString("titulo"));
                    dicas.put(id, res.getString("dica"));
                    dificuldades.put(id, res.getString("dificuldade"));
                    materiasIds.put(id, res.getInt("id_materia"));
                    // Usamos o nome do criador diretamente da consulta
                    nomesCriadores.put(id, res.getString("nome_criador"));
                }

                // Buscamos todos os materiais necessários de uma vez
                Set<Integer> idsMateriasUnicas = new HashSet<>(materiasIds.values());
                Map<Integer, Materia> materias = new HashMap<>();
                for (int idMateria : idsMateriasUnicas) {
                    materias.put(idMateria, MateriaDAO.buscarPorId(idMateria));
                }

                // Agora criamos as perguntas com todos os dados
                for (int id : ids) {
                    String titulo = titulos.get(id);
                    String dica = dicas.get(id);
                    DificuldadePergunta dificuldade = DificuldadePergunta.fromString(dificuldades.get(id));
                    Materia materia = materias.get(materiasIds.get(id));

                    // Criamos um professor temporário apenas com o nome
                    Professor criador = new Professor(0, nomesCriadores.get(id), "sem-email@exemplo.com", "", "", false);

                    // Carregamos as alternativas
                    Alternativa[] alternativas = AlternativaDAO.obterAlternativa(id);

                    perguntas.add(new Pergunta(id, titulo, alternativas, dificuldade, dica, criador, materia));
                }
            }
        } catch (SQLException e) {
            System.err.println("Erro ao carregar perguntas: " + e.getMessage());
            e.printStackTrace();
            throw e; // Relançar a exceção para tratamento no controlador
        }

        return perguntas;
    }

    /**
     * Obtém uma pergunta do banco de dados pelo seu ID.
     *
     * @param id ID da pergunta a ser obtida.
     */
    public static Pergunta buscarPorId(int id) {
        final String sql = "SELECT * FROM pergunta WHERE " + PerguntaColuna.ID.get() + " = ?";

        try (
                Connection conexao = ConexaoDB.getConnection();
                PreparedStatement stmt = conexao.prepareStatement(sql)
        ) {
            stmt.setInt(1, id);
            ResultSet res = stmt.executeQuery();

            if (res.next()) {
                // Extrair os dados da pergunta
                int idPergunta = res.getInt(PerguntaColuna.ID.get()); // ID
                String enunciado = res.getString(PerguntaColuna.ENUNCIADO.get()); // Enunciado
                String dificuldadeStr = res.getString(PerguntaColuna.DIFICULDADE.get()); // string para DificuldadePergunta
                String dica = res.getString(PerguntaColuna.DICA.get()); // Dica
                int criadorId = res.getInt(PerguntaColuna.CRIADOR.get()); // ID do criador
                int materiaId = res.getInt(PerguntaColuna.MATERIA.get()); // ID da matéria

                // Usar dados extraídos
                Alternativa[] alternativas = AlternativaDAO.buscarPorPergunta(idPergunta);
                DificuldadePergunta dificuldade = DificuldadePergunta.fromString(dificuldadeStr);
                Professor criador = ProfessorDAO.buscarPorId(criadorId); // Criador (professor)
                Materia materia = MateriaDAO.buscarPorId(materiaId); // Matéria

                return new Pergunta(
                        idPergunta, enunciado, alternativas, dificuldade, dica, criador, materia
                );
            }
            // Se não for encontrada
            return null;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    /**
     * Obtém um arraylist com os IDs das perguntas que podem ser sorteadas.
     * As perguntas são filtradas por matéria (se for diferente de "Todas as Matérias"), e por dificuldade.
     * <p>
     * A lista só inclui perguntas que o aluno não respondeu anteriormente, ou seja, que não estão na tabela {@code pergunta_partida}.
     *
     * @param partida Partida que contém as informações do aluno, matéria e dificuldade.
     * @return ArrayList com os IDs das perguntas que podem ser sorteadas.
     */
    public static ArrayList<Integer> obterListaDeSorteio(Partida partida) {
        ArrayList<Integer> lista = new ArrayList<>();

        String idPergunta = PerguntaColuna.ID.get();
        String dificuldade = PerguntaColuna.DIFICULDADE.get();
        String idMateria = PerguntaColuna.MATERIA.get();

        String sql = "SELECT pergunta." + idPergunta + " FROM pergunta " +
                "LEFT JOIN pergunta_partida pp ON pergunta." + idPergunta + " = pp." + idPergunta + " " +
                "LEFT JOIN partida pa ON pp.id_partida = pa.id_partida AND pa.id_aluno = ? " +
                "WHERE (pergunta." + idMateria + " = ? OR ? = -1) " +
                "AND pergunta." + dificuldade + " = ? " +
                "AND pa.id_aluno IS NULL";

        try (
                Connection conexao = ConexaoDB.getConnection();
                PreparedStatement stmt = conexao.prepareStatement(sql)
        ) {
            stmt.setInt(1, partida.getALUNO().getId());
            stmt.setInt(2, partida.getMATERIA() != null ? partida.getMATERIA().getId() : -1);
            stmt.setInt(3, partida.getMATERIA() != null ? partida.getMATERIA().getId() : -1);
            stmt.setString(4, partida.getDificuldade().get());

            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                lista.add(rs.getInt(idPergunta));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        return lista;
    }

    public static int adicionarPergunta(String enunciado, String dica, String materia, String dificuldade) {
        int idGerado = -1;
        String sql = "INSERT INTO pergunta (enunciado, dica, materia, dificuldade) VALUES (?, ?, ?, ?)";
        try (Connection conn = ConexaoDB.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS)) {
            stmt.setString(1, enunciado);
            stmt.setString(2, dica);
            stmt.setString(3, materia);
            stmt.setString(4, dificuldade);
            stmt.executeUpdate();
            ResultSet rs = stmt.getGeneratedKeys();
            if (rs.next()) {
                idGerado = rs.getInt(1);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return idGerado;
    }

    public static void adicionarAlternativa(int perguntaId, String texto, int correta) {
        String sql = "INSERT INTO alternativa (pergunta_id, texto, correta) VALUES (?, ?, ?)";
        try (Connection conn = ConexaoDB.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setInt(1, perguntaId);
            stmt.setString(2, texto);
            stmt.setInt(3, correta);
            stmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public static Pergunta buscarPorEnunciado(String enunciado) {
        final String sql = "SELECT * FROM pergunta WHERE titulo = ?";
        try (
                Connection conexao = ConexaoDB.getConnection();
                PreparedStatement stmt = conexao.prepareStatement(sql)
        ) {
            stmt.setString(1, enunciado);
            ResultSet res = stmt.executeQuery();

            if (res.next()) {
                int idPergunta = res.getInt("id_pergunta");
                String titulo = res.getString("titulo");
                String dificuldadeStr = res.getString("dificuldade");
                String dica = res.getString("dica");
                int criadorId = res.getInt("criador");
                int materiaId = res.getInt("id_materia");

                Alternativa[] alternativas = AlternativaDAO.buscarPorPergunta(idPergunta);
                DificuldadePergunta dificuldade = DificuldadePergunta.fromString(dificuldadeStr);
                Professor criador = ProfessorDAO.buscarPorId(criadorId);
                Materia materia = MateriaDAO.buscarPorId(materiaId);

                return new Pergunta(idPergunta, enunciado, alternativas, dificuldade, dica, criador, materia);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }
}
