package com.poliedro.jogodonotao.database.dao;

import com.poliedro.jogodonotao.database.ConexaoDB;
import com.poliedro.jogodonotao.usuario.Aluno;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Classe DAO para a entidade Aluno.
 * Responsável por obter e manipular os dados da tabela {@code professor} no banco de dados.
 *
 * @author Alexandre Raminelli
 */
public class AlunoDAO {
    /**
     * Colunas da tabela aluno.
     */
    enum AlunoColunas {
        ID("id_aluno"),
        ID_TURMA("id_turma"),
        NOME("nome"),
        EMAIL("email"),
        RA("ra"),
        HASH_SENHA("hash_senha"),
        PONTUACAO("pontuacao_geral");

        // Construtor
        private final String coluna;

        AlunoColunas(String coluna) {
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
    private static Aluno buscarAluno(AlunoColunas coluna, String chave) {
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
                return new Aluno(
                        res.getInt(AlunoColunas.ID.get()),
                        res.getString(AlunoColunas.NOME.get()),
                        res.getString(AlunoColunas.EMAIL.get()),
                        res.getString(AlunoColunas.RA.get()),
                        res.getString(AlunoColunas.HASH_SENHA.get()),
                        res.getLong(AlunoColunas.PONTUACAO.get())
                );
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        // Se não for encontrado
        return null;
    }

    /**
     * Procura e retorna uma instância aluno a partir de seu e-mail.
     *
     * @param email E-mail acadêmico do aluno.
     * @return A instância do aluno ou {@code null} se ele não for encontrado.
     */
    public static Aluno buscarPorEmail(String email) {
        return buscarAluno(AlunoColunas.EMAIL, email);
    }

    /**
     * Procura e retorna uma instância aluno a partir de seu RA.
     *
     * @param ra RA (registro acadêmico) do aluno.
     * @return A instância do aluno ou {@code null} se ele não for encontrado.
     */
    public static Aluno buscarPorRa(String ra) {
        return buscarAluno(AlunoColunas.RA, ra);
    }

    /**
     * Procura e retorna uma instância aluno a partir de seu ID.
     * @param id ID do aluno no banco de dados.
     * @return A instância do aluno ou {@code null} se ele não for encontrado.
     */
    public static Aluno buscarPorId(int id) {
        return buscarAluno(AlunoColunas.ID, String.valueOf(id));
    }

    /**
     * Verifica se um e-mail de um aluno está cadastrado no banco de dados.
     * @param email E-mail acadêmico
     * @return {@code true} se o e-mail estiver cadastrado, {@code false} se não.
     */
    public static boolean existeEmail(String email) {
        return buscarPorEmail(email) != null;
    }

    /**
     * Verifica se um RA (registro de matrícula) de um aluno está cadastrado no banco de dados.
     * @param ra RA (registro de matrícula)
     * @return {@code true} se o RA estiver cadastrado, {@code false} se não.
     */
    public static boolean existeRa(String ra) {
        return buscarPorRa(ra) != null;
    }

}
