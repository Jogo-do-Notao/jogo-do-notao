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
     * Procura e retorna o ID de um professor a partir de seu e-mail.
     *
     * @param email E-mail do professor.
     * @return O ID do professor ou {@code -1} se ele não for encontrado.
     */
    public static int obterId(String email) {
        // Query SQL
        String sql = "SELECT id_professor FROM professor WHERE email = ?";

        // Executar query
        try (
                Connection conexao = ConexaoDB.getConnection();
                PreparedStatement stmt = conexao.prepareStatement(sql)
        ) {
            // Substituir placeholder
            stmt.setString(1, email);
            // Executar query e obter resultado
            ResultSet res = stmt.executeQuery();
            // Extrair o valor da coluna id_professor
            if (res.next()) {
                return res.getInt("id_professor");
            }
        } catch (SQLException e) { // Tratamento de erros
            throw new RuntimeException("Erro ao buscar o professor: ", e);
        }
        // Se não encontrar
        return -1;
    }

    /**
     * Obter professor do banco de dados a partir do seu ID.
     *
     * @param id ID do professor.
     * @return Instância do professor ou {@code null} se ele não for encontrado.
     */
    public static Professor buscarPorId(int id) {
        // Query SQL
        String sql = "SELECT * FROM professor WHERE id_professor = ?";
        try (
                Connection conexao = ConexaoDB.getConnection();
                PreparedStatement stmt = conexao.prepareStatement(sql)
        ) {
            // Substituir placeholder
            stmt.setInt(1, id);
            // Executar query e obter resultado
            ResultSet res = stmt.executeQuery();
            // Extrair o valor da coluna id_professor
            if (res.next()) {
                return new Professor(
                        res.getInt("id_professor"),
                        res.getString("nome"),
                        res.getString("email"),
                        res.getString("hash_senha"),
                        res.getString("descricao"),
                        res.getBoolean("coordenador")
                );
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        // Se não encontrar
        return null;
    }

    /**
     * Obter professor do banco de dados a partir do seu e-mail.
     * @param email E-mail do professor.
     * @return Instância do professor ou {@code null} se ele não for encontrado.
     */
    public static Professor buscarPorEmail(String email) {
        return buscarPorId(obterId(email));
    }
}
