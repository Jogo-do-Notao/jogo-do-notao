package com.poliedro.jogodonotao.database.dao;

import com.poliedro.jogodonotao.database.ConexaoDB;
import com.poliedro.jogodonotao.jogo.Partida;
import com.poliedro.jogodonotao.pergunta.DificuldadePergunta;
import com.poliedro.jogodonotao.pergunta.Alternativa;
import com.poliedro.jogodonotao.pergunta.Pergunta;
import com.poliedro.jogodonotao.usuario.Professor;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

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

                // Usar dados extraídos
                Alternativa[] alternativas = AlternativaDAO.buscarPorPergunta(idPergunta);
                DificuldadePergunta dificuldade = DificuldadePergunta.fromString(dificuldadeStr);
                Professor criador = ProfessorDAO.buscarPorId(criadorId); // Criador (professor)

                return new Pergunta(
                        idPergunta, enunciado, alternativas, dificuldade, dica, criador
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

        String sql = "SELECT p." + idPergunta + " FROM pergunta p " +
                "LEFT JOIN pergunta_partida pp ON p." + idPergunta + " = pp." + idPergunta + " " +
                "LEFT JOIN partida pa ON pp.id_partida = pa.id_partida AND pa.id_aluno = ? " +
                "WHERE (p." + idMateria + " = ? OR ? = -1) " +
                "AND p." + dificuldade + " = ? " +
                "AND pa.id_aluno IS NULL";

        try (
                Connection conexao = ConexaoDB.getConnection();
                PreparedStatement stmt = conexao.prepareStatement(sql)
        ) {
            stmt.setInt(1, partida.getAluno().getId());
            stmt.setInt(2, partida.getMateria() != null ? partida.getMateria().getId() : -1);
            stmt.setInt(3, partida.getMateria() != null ? partida.getMateria().getId() : -1);
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
}
