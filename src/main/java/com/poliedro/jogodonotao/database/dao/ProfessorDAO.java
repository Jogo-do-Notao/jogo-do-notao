package com.poliedro.jogodonotao.database.dao;

import com.poliedro.jogodonotao.database.ConexaoDB;
import com.poliedro.jogodonotao.usuario.Professor;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

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
        final String sql = "SELECT * FROM professor WHERE " + coluna.get() + " = ?";

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
}
