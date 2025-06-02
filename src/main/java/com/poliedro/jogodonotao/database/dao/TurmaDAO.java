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
                String emailProfessor = res.getString(TurmaColuna.PROFESSOR.get());
                byte serie = res.getByte(TurmaColuna.SERIE.get());
                String descricao = res.getString(TurmaColuna.DESCRICAO.get());
                // Buscar professor responsável
                Professor professor = ProfessorDAO.buscarPorEmail(emailProfessor);

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
        // query SQL
        final String sql = "SELECT * FROM turma";
        // lista de matérias

        ArrayList<Turma> turmas = new ArrayList<>();

        // Executar query
        try (
                Connection conexao = ConexaoDB.getConnection();
                PreparedStatement stmt = conexao.prepareStatement(sql);
                ResultSet res = stmt.executeQuery()
        ) {
            // Extrair tuplas da tabela
            while (res.next()) {
                // extrair atributos
                int id = res.getInt(TurmaColuna.ID.get());
                String nome = res.getString(TurmaColuna.NOME.get());
                byte serie = res.getByte(TurmaColuna.SERIE.get());
                String descrição = res.getString(TurmaColuna.DESCRICAO.get());
                Professor professor = ProfessorDAO.buscarPorId(res.getInt(TurmaColuna.PROFESSOR.get()));
                // adicionar a lista
                turmas.add(new Turma(id, nome, professor,serie,descrição));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e); // tratamento de erro
        }
        // retornar lista de matérias
        return turmas;

    }

    public static void adicionarTurma(String nome, String professor, String serie, String descricao) {
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
            stmt.setString(2, professor);
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
