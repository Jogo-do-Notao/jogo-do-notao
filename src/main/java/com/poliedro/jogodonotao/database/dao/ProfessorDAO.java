package com.poliedro.jogodonotao.database.dao;

import com.poliedro.jogodonotao.agrupadores.Turma;
import com.poliedro.jogodonotao.database.ConexaoDB;
import com.poliedro.jogodonotao.usuario.Aluno;
import com.poliedro.jogodonotao.usuario.Professor;
import com.poliedro.jogodonotao.utils.HashSenha;

import java.sql.*;
import java.util.ArrayList;

/**
 * Classe DAO para a entidade Professor.
 * Responsável por obter e manipular os dados da tabela {@code professor} no banco de dados.
 *
 * @author Alexandre Raminelli
 */
public class ProfessorDAO {
    /**
     * Colunas da tabela {@code professor}.
     */
    private enum ProfessorColuna {
        // Colunas
        ID("id_professor"),
        NOME("nome"),
        EMAIL("email"),
        HASH_SENHA("hash_senha"),
        DESCRICAO("descricao"),
        COORDENADOR("coordenador");

        // Construtor
        private final String coluna;

        ProfessorColuna(String coluna) {
            this.coluna = coluna;
        }

        // Getter do valor
        public String get() {
            return coluna;
        }
    }

    /**
     * Busca um professor no banco de dados a partir de um atributo chave (ID ou e-mail).
     *
     * @param coluna O atributo/coluna chave usada na busca. Pode ser ID ou e-mail.
     * @param chave  O valor que será buscado no banco de dados.
     */
    private static Professor buscarProfessor(ProfessorColuna coluna, String chave) {
        // Query SQL
        final String sql = "SELECT * FROM professor WHERE LOWER(" + coluna.get() + ") = LOWER(?)";

        // Executar query
        try (
                Connection conexao = ConexaoDB.getConnection();
                PreparedStatement stmt = conexao.prepareStatement(sql)

        ) {
            // Substituir placeholder
            stmt.setString(1, chave);
            // Executar query e obter resultado
            ResultSet res = stmt.executeQuery();

            // Extrair tupla correspondente
            if (res.next()) {
                // criar instância do professor com os dados do banco
                return new Professor(
                        res.getInt(ProfessorColuna.ID.get()), // id
                        res.getString(ProfessorColuna.NOME.get()), // nome
                        res.getString(ProfessorColuna.EMAIL.get()), // email
                        res.getString(ProfessorColuna.HASH_SENHA.get()), // hash senha
                        res.getString(ProfessorColuna.DESCRICAO.get()), // descricao
                        res.getBoolean(ProfessorColuna.COORDENADOR.get()) // coordenador
                );
            }
        } catch (SQLException e) {
            throw new RuntimeException(e); // tratar o erro
        }
        // Se professor não for encontrado
        return null;
    }

    /**
     * Procura e retorna uma instância de professor a partir de seu ID.
     *
     * @param id ID do professor no banco de dados.
     * @return Instância do professor ou {@code null} se ele não for encontrado.
     */
    public static Professor buscarPorId(int id) {
        return buscarProfessor(ProfessorColuna.ID, String.valueOf(id));
    }

    /**
     * Procura e retorna uma instância de professor a partir de seu e-mail.
     *
     * @param email E-mail do professor.
     * @return Instância do professor ou {@code null} se ele não for encontrado.
     */
    public static Professor buscarPorEmail(String email) {
        return buscarProfessor(ProfessorColuna.EMAIL, email);
    }

    public static Professor adicionarProfessor(String nome, String descricao, String email, String senha) {

        // Criptografar senha
        String hashSenha = HashSenha.obterHash(senha);

        // Montar query SQL
        String sql = "INSERT INTO professor";
        String campos = ProfessorDAO.ProfessorColuna.NOME.get() + ", " + ProfessorDAO.ProfessorColuna.DESCRICAO.get() + "," + ProfessorDAO.ProfessorColuna.EMAIL.get() + "," + ProfessorDAO.ProfessorColuna.HASH_SENHA.get();
        String placeholders = "?, ?, ?, ?";
        sql += "(" + campos + ") VALUES (" + placeholders + ")";

        try (
                Connection conexao = ConexaoDB.getConnection();
                PreparedStatement stmt = conexao.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS)) {
            stmt.setString(1, nome);
            stmt.setString(2, descricao);
            stmt.setString(3, email);
            stmt.setString(4, hashSenha);


            //execuatr query
            int linhasAfetadas = stmt.executeUpdate();

            if (linhasAfetadas == 0) {
                throw new RuntimeException("Erro ao criar professor: nenhuma linha  foi afetada.");
            }

            try (ResultSet generatedKeys = stmt.getGeneratedKeys()) {
                if (generatedKeys.next()) {
                    // Obter ID da nova partida e retorna-lá
                    int idProfessor = generatedKeys.getInt(1);
                    return buscarPorId(idProfessor);
                } else {
                    throw new RuntimeException("Erro ao criar professor: nenhum ID foi gerado.");
                }
            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public static ArrayList<Professor> obterProfessores() {
        ArrayList<Professor> professores = new ArrayList<>();
        String sql = "SELECT * FROM professor";
        try (
                Connection conexao = ConexaoDB.getConnection();
                PreparedStatement stmt = conexao.prepareStatement(sql);
                ResultSet res = stmt.executeQuery()
        ) {
            while (res.next()) {
                Professor professor = new Professor(
                        res.getInt("id_professor"),
                        res.getString("nome"),
                        res.getString("email"),
                        res.getString("hash_senha"),
                        res.getString("descricao"),
                        res.getBoolean("coordenador")
                );
                professores.add(professor);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return professores;
    }

    /**
     * Exclui um professor do banco de dados.
     *
     * @param idProfessor ID do professor a ser excluído
     * @return true se a exclusão foi bem-sucedida, false caso contrário
     */
    public static boolean excluirProfessor(int idProfessor) {
        // Primeiro, verificar se o professor existe
        Professor professor = buscarPorId(idProfessor);
        if (professor == null) {
            System.err.println("Erro: Professor com ID " + idProfessor + " não encontrado.");
            return false;
        }

        Connection conexao = null;
        try {
            conexao = ConexaoDB.getConnection();
            conexao.setAutoCommit(false); // Inicia transação

            // Primeiro, verificar se o professor é coordenador
            if (professor.isCoordenador()) {
                // Se for coordenador, verificar se é o único coordenador
                String sqlVerificaCoordenadores = "SELECT COUNT(*) AS total FROM professor WHERE coordenador = TRUE";
                try (PreparedStatement stmt = conexao.prepareStatement(sqlVerificaCoordenadores);
                     ResultSet rs = stmt.executeQuery()) {
                    if (rs.next() && rs.getInt("total") <= 1) {
                        // Se for o único coordenador, não permite a exclusão
                        System.err.println("Erro: Não é possível excluir o único professor coordenador do sistema.");
                        return false;
                    }
                }
            }

            // Se chegou aqui, pode prosseguir com a exclusão
            String sql = "DELETE FROM professor WHERE id_professor = ?";
            try (PreparedStatement stmt = conexao.prepareStatement(sql)) {
                stmt.setInt(1, idProfessor);
                int linhasAfetadas = stmt.executeUpdate();

                if (linhasAfetadas > 0) {
                    conexao.commit(); // Confirma a transação
                    return true;
                } else {
                    conexao.rollback(); // Desfaz a transação
                    return false;
                }
            }
        } catch (SQLException e) {
            try {
                if (conexao != null) {
                    conexao.rollback(); // Em caso de erro, faz rollback
                }
            } catch (SQLException ex) {
                System.err.println("Erro ao fazer rollback da transação: " + ex.getMessage());
            }
            System.err.println("Erro ao excluir professor: " + e.getMessage());
            e.printStackTrace();
            return false;
        } finally {
            try {
                if (conexao != null) {
                    conexao.setAutoCommit(true); // Restaura o auto-commit
                    conexao.close();
                }
            } catch (SQLException e) {
                System.err.println("Erro ao fechar conexão: " + e.getMessage());
            }
        }
    }

    /**
     * Atualiza a senha de um professor no banco de dados.
     *
     * @param idProfessor   ID do professor que terá a senha atualizada.
     * @param novaSenhaHash Nova senha já criptografada.
     * @return {@code true} se a atualização for bem-sucedida, {@code false} caso contrário.
     */
    public static boolean atualizarSenha(int idProfessor, String novaSenhaHash) {
        String sql = "UPDATE professor SET hash_senha = ? WHERE id_professor = ?";

        try (Connection conexao = ConexaoDB.getConnection();
             PreparedStatement stmt = conexao.prepareStatement(sql)) {

            stmt.setString(1, novaSenhaHash);
            stmt.setInt(2, idProfessor);

            int linhasAfetadas = stmt.executeUpdate();
            return linhasAfetadas > 0;

        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
}
