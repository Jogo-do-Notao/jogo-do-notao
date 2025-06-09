package com.poliedro.jogodonotao.database.dao;

import com.poliedro.jogodonotao.agrupadores.Turma;
import com.poliedro.jogodonotao.database.ConexaoDB;
import com.poliedro.jogodonotao.usuario.Professor;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 * Classe DAO para a entidade Turma.
 * Responsável por obter e manipular os dados da tabela {@code turma} no banco de dados.
 */
public class TurmaDAO {
    /**
     * Colunas da tabela {@code turma}.
     */
    private enum TurmaColuna {
        // Colunas
        ID("id_turma"),
        PROFESSOR("professor_responsavel"),
        NOME("nome"),
        SERIE("serie"),
        DESCRICAO("descricao");

        // Construtor
        private final String coluna;

        TurmaColuna(String coluna) {
            this.coluna = coluna;
        }

        // Getter do valor
        public String get() {
            return coluna;
        }
    }

    /**
     * Busca uma turma no banco de dados a partir de um atributo chave (ID ou nome).
     *
     * @param coluna O atributo/coluna chave usada na busca. Pode ser ID ou nome.
     * @param chave  O valor que será buscado no banco de dados.
     * @return Instância da turma correspondente ou {@code null} se ela não for encontrado.
     */
    private static Turma buscarTurma(TurmaColuna coluna, String chave) {
        // Query SQL
        final String sql = "SELECT * FROM turma WHERE " + coluna.get() + " = ?";

        // Executar query
        try (
                Connection conexao = ConexaoDB.getConnection();
                PreparedStatement stmt = conexao.prepareStatement(sql)
        ) {
            // Substituir placeholder
            stmt.setString(1, chave); // e-mail sendo buscado
            // Executar query e obter resultado
            ResultSet res = stmt.executeQuery();

            // Extrair tupla correspondente
            if (res.next()) {
                // Extrair dados da tupla
                int id = res.getInt(TurmaColuna.ID.get());
                String nome = res.getString(TurmaColuna.NOME.get());
                int idProfessor = res.getInt(TurmaColuna.PROFESSOR.get());
                byte serie = res.getByte(TurmaColuna.SERIE.get());
                String descricao = res.getString(TurmaColuna.DESCRICAO.get());
                // Buscar professor responsável
                Professor professor = ProfessorDAO.buscarPorId(idProfessor);

                return new Turma(id, nome, professor, serie, descricao);

            }
        } catch (SQLException e) {
            throw new RuntimeException(e); // tratar o erro
        }
        // Se turma não for encontrada
        return null;
    }

    /**
     * Procura e retorna uma instância turma a partir de seu ID.
     *
     * @param id ID da turma no banco de dados.
     * @return Instância da turma ou {@code null} se ela não for encontrada.
     */
    public static Turma buscarPorId(int id) {
        return buscarTurma(TurmaColuna.ID, String.valueOf(id));
    }

    public static Turma buscarPorNome(String nome) {
        return buscarTurma(TurmaColuna.NOME, nome);
    }

    public static ArrayList<Turma> obterTurma() {
        final String sql = "SELECT * FROM turma";
        ArrayList<Turma> turmas = new ArrayList<>();

        try (
                Connection conexao = ConexaoDB.getConnection();
                PreparedStatement stmt = conexao.prepareStatement(sql);
                ResultSet res = stmt.executeQuery()
        ) {
            // Lista temporária para armazenar dados das turmas
            class TurmaTemp {
                int id;
                String nome;
                int idProfessor;  
                byte serie;
                String descricao;
                TurmaTemp(int id, String nome, int idProfessor, byte serie, String descricao) {
                    this.id = id;
                    this.nome = nome;
                    this.idProfessor = idProfessor;
                    this.serie = serie;
                    this.descricao = descricao;
                }
            }
            ArrayList<TurmaTemp> tempList = new ArrayList<>();

            while (res.next()) {
                int id = res.getInt(TurmaColuna.ID.get());
                String nome = res.getString(TurmaColuna.NOME.get());
                int idProfessor = res.getInt(TurmaColuna.PROFESSOR.get());  
                byte serie = res.getByte(TurmaColuna.SERIE.get());
                String descricao = res.getString(TurmaColuna.DESCRICAO.get());
                System.out.println("Turma encontrada - Nome: " + nome + ", ID do professor: " + idProfessor);
                tempList.add(new TurmaTemp(id, nome, idProfessor, serie, descricao));
            }

            // Agora, para cada turma, buscar o professor pelo ID e criar o objeto Turma
            for (TurmaTemp temp : tempList) {
                System.out.println("Buscando professor com ID: " + temp.idProfessor);
                Professor professor = ProfessorDAO.buscarPorId(temp.idProfessor);
                if (professor == null) {
                    System.err.println("ERRO: Professor não encontrado para o ID: " + temp.idProfessor);
                } else {
                    System.out.println("Professor encontrado: " + professor.getNome() + " (ID: " + temp.idProfessor + ")");
                }
                turmas.add(new Turma(temp.id, temp.nome, professor, temp.serie, temp.descricao));
            }
        } catch (SQLException e) {
            System.err.println("Erro ao carregar turmas: " + e.getMessage());
            e.printStackTrace();
            throw new RuntimeException(e);
        }
        return turmas;
    }

    public static void adicionarTurma(String nome, String nomeProfessor, String serie, String descricao) {
        // Primeiro, obter o id do professor pelo nome
        int idProfessor = 0;
        ArrayList<Professor> professores = ProfessorDAO.obterProfessores();
        for (Professor prof : professores) {
            if (prof.getNome().equals(nomeProfessor)) {
                idProfessor = prof.getId();
                break;
            }
        }
        
        if (idProfessor == 0) {
            throw new RuntimeException("Professor não encontrado: " + nomeProfessor);
        }

        String sql = "INSERT INTO turma (" +
                TurmaColuna.NOME.get() + ", " +
                TurmaColuna.PROFESSOR.get() + ", " +
                TurmaColuna.SERIE.get() + ", " +
                TurmaColuna.DESCRICAO.get() +
                ") VALUES (?, ?, ?, ?)";

        try (
                Connection conexao = ConexaoDB.getConnection();
                PreparedStatement stmt = conexao.prepareStatement(sql)
        ) {
            stmt.setString(1, nome);
            stmt.setInt(2, idProfessor);  // Salva o id do professor
            stmt.setString(3, serie);
            stmt.setString(4, descricao);
            int linhasAfetadas = stmt.executeUpdate();
            if (linhasAfetadas == 0) {
                throw new RuntimeException("Erro ao criar turma: nenhuma linha foi afetada.");
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
