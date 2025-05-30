package com.poliedro.jogodonotao.database.dao;

import com.poliedro.jogodonotao.agrupadores.Turma;
import com.poliedro.jogodonotao.database.ConexaoDB;
import com.poliedro.jogodonotao.usuario.Aluno;
import com.poliedro.jogodonotao.utils.HashSenha;

import java.sql.*;

/**
 * Classe DAO para a entidade Aluno.
 * Responsável por obter e manipular os dados da tabela {@code aluno} no banco de dados.
 *
 * @author Alexandre Raminelli
 */
public class AlunoDAO {
    /**
     * Colunas da tabela {@code aluno}.
     */
    private enum AlunoColuna {
        // Colunas
        ID("id_aluno"),
        ID_TURMA("id_turma"),
        NOME("nome"),
        EMAIL("email"),
        RA("ra"),
        HASH_SENHA("hash_senha"),
        PONTUACAO("pontuacao_geral");

        // Construtor
        private final String coluna;

        AlunoColuna(String coluna) {
            this.coluna = coluna;
        }

        // Getter do valor
        public String get() {
            return coluna;
        }
    }

    /**
     * Busca aluno no banco de dados a partir de um atributo chave (ID, e-mail ou RA).
     *
     * @param coluna O atributo/coluna chave usada na busca. Pode ser ID, e-mail ou RA.
     * @param chave  O valor que será buscado no banco de dados.
     * @return Instância do aluno correspondente ou {@code null} se ele não for encontrado.
     */
    private static Aluno buscarAluno(AlunoColuna coluna, String chave) {
        // Query SQL
        final String sql = "SELECT * FROM aluno WHERE " + coluna.get() + " = ?";

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
                // Extrair dados do aluno
                int id = res.getInt(AlunoColuna.ID.get());
                String nome = res.getString(AlunoColuna.NOME.get());
                String email = res.getString(AlunoColuna.EMAIL.get());
                String ra = res.getString(AlunoColuna.RA.get());
                String hashSenha = res.getString(AlunoColuna.HASH_SENHA.get());
                int idTurma = res.getInt(AlunoColuna.ID_TURMA.get());
                long pontuacao = res.getLong(AlunoColuna.PONTUACAO.get());

                return new Aluno(id, nome, email, ra, hashSenha, TurmaDAO.buscarPorId(idTurma), pontuacao);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e); // tratar o erro
        }
        // Se aluno não for encontrado
        return null;
    }

    /**
     * Procura e retorna uma instância aluno a partir de seu e-mail.
     *
     * @param email E-mail acadêmico do aluno.
     * @return A instância do aluno ou {@code null} se ele não for encontrado.
     */
    public static Aluno buscarPorEmail(String email) {
        return buscarAluno(AlunoColuna.EMAIL, email);
    }

    /**
     * Procura e retorna uma instância aluno a partir de seu RA.
     *
     * @param ra RA (registro acadêmico) do aluno.
     * @return A instância do aluno ou {@code null} se ele não for encontrado.
     */
    public static Aluno buscarPorRa(String ra) {
        return buscarAluno(AlunoColuna.RA, ra);
    }

    /**
     * Procura e retorna uma instância aluno a partir de seu ID.
     *
     * @param id ID do aluno no banco de dados.
     * @return A instância do aluno ou {@code null} se ele não for encontrado.
     */
    public static Aluno buscarPorId(int id) {
        return buscarAluno(AlunoColuna.ID, String.valueOf(id));
    }

    /**
     * Verifica se um e-mail de um aluno está cadastrado no banco de dados.
     *
     * @param email E-mail acadêmico
     * @return {@code true} se o e-mail estiver cadastrado, {@code false} se não.
     */
    public static boolean existeEmail(String email) {
        return buscarPorEmail(email) != null;
    }

    /*private static String getInsertSQL(int idMateria) {
        String sql = "INSERT INTO aluno ";

        String campos =

        // Campos e valores que serão adicionados na query
        String campos = PartidaDAO.PartidaColuna.ALUNO.get();
        String placeholders = "?";

        // Verificar se aluno selecionou "Todas as Matérias" ou uma matéria específica
        if (idMateria != 0) {
            // Aluno selecionou matéria específica
            campos += ", " + PartidaDAO.PartidaColuna.MATERIA.get();
            placeholders += ", ?";
        }
        // adicionar campos e valores na query
        sql += "(" + campos + ") VALUES (" + placeholders + ")";
        return sql;
    }
    */

    /**
     * Verifica se um RA (registro de matrícula) de um aluno está cadastrado no banco de dados.
     *
     * @param ra RA (registro de matrícula)
     * @return {@code true} se o RA estiver cadastrado, {@code false} se não.
     */
    public static boolean existeRa(String ra) {
        return buscarPorRa(ra) != null;
    }

    public static Aluno adicionarAluno(String nome, Turma turma, String ra, String email, String senha) {

        // Criptografar senha
        String hashSenha = HashSenha.obterHash(senha);

        // Montar query SQL
        String sql = "INSERT INTO aluno";
        String campos = AlunoColuna.NOME.get() + ", " + AlunoColuna.RA.get() + "," + AlunoColuna.EMAIL.get() + "," + AlunoColuna.HASH_SENHA.get() + "," + AlunoColuna.ID_TURMA.get();
        String placeholders = "?, ?, ?, ?, ?";
        sql += "(" + campos + ") VALUES (" + placeholders + ")";

        try (
                Connection conexao = ConexaoDB.getConnection();
                PreparedStatement stmt = conexao.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS)) {
            stmt.setString(1, nome);
            stmt.setInt(2, turma.getId());
            stmt.setString(3, ra);
            stmt.setString(4, email);
            stmt.setString(5, hashSenha);

            //execuatr query
            int linhasAfetadas = stmt.executeUpdate();

            if (linhasAfetadas == 0) {
                throw new RuntimeException("Erro ao criar partida: nenhuma linha  foi afetada.");
            }

            try (ResultSet generatedKeys = stmt.getGeneratedKeys()) {
                if (generatedKeys.next()) {
                    // Obter ID da nova partida e retorna-lá
                    int idAluno = generatedKeys.getInt(1);
                    return buscarPorId(idAluno);
                } else {
                    throw new RuntimeException("Erro ao criar partida: nenhum ID foi gerado.");
                }
            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}



