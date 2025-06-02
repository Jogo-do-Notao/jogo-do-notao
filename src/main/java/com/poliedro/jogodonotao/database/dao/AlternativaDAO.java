package com.poliedro.jogodonotao.database.dao;

import com.poliedro.jogodonotao.database.ConexaoDB;
import com.poliedro.jogodonotao.pergunta.Alternativa;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Classe DAO para a entidade Alternativa.
 * Responsável por obter e manipular os dados da tabela {@code alternativa} no banco de dados.
 */
public class AlternativaDAO {
    /**
     * Colunas da tabela {@code alternativa}.
     */
    public enum AlternativaColuna {
        // Colunas
        ID("id_alternativa"),
        PERGUNTA("id_pergunta"),
        TEXTO("titulo"),
        CORRETA("correta");

        // Construtor
        private final String coluna;

        AlternativaColuna(String coluna) {
            this.coluna = coluna;
        }

        // Getter do valor
        public String get() {
            return coluna;
        }
    }

    public static Alternativa[] obterAlternativa(int idPergunta) {
        final String sql = String.format("SELECT * FROM alternativa WHERE %s = ?",
                AlternativaColuna.PERGUNTA.get());
        Alternativa[] alternativas = new Alternativa[5];

        try (Connection conexao = ConexaoDB.getConnection();
             PreparedStatement stmt = conexao.prepareStatement(sql)) {

            stmt.setInt(1, idPergunta);

            try (ResultSet rs = stmt.executeQuery()) {
                int i = 0;
                while (rs.next() && i < alternativas.length) {
                    // Buscar e add alternativa à lista
                    alternativas[i++] = new Alternativa(
                            rs.getInt(AlternativaColuna.ID.get()),
                            rs.getString(AlternativaColuna.TEXTO.get()),
                            rs.getBoolean(AlternativaColuna.CORRETA.get())
                    );

                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return alternativas;
    }

    /**
     * Obtém as alternativas do banco de dados correspondentes a uma pergunta.
     *
     * @param id ID da pergunta a quais as alternativas pertencem.
     * @return Lista com as 5 alternativas da pergunta.
     */
    public static Alternativa[] buscarPorPergunta(int id) {
        // Query SQL
        final String sql = "SELECT * FROM alternativa WHERE " + AlternativaColuna.PERGUNTA.get() + " = ?";

        // Lista para armazenar as alternativas
        Alternativa[] alternativas = new Alternativa[5];

        // Executar query
        try (
                Connection conexao = ConexaoDB.getConnection();
                PreparedStatement stmt = conexao.prepareStatement(sql)
        ) {
            // Substituir placeholder
            stmt.setInt(1, id); // ID da pergunta sendo buscada

            // Executar query e obter resultado
            ResultSet rs = stmt.executeQuery();
            int index = 0; // índice da lista
            while (rs.next() && index < alternativas.length) {
                // Criar nova alternativa com os dados do ResultSet
                alternativas[index] = new Alternativa(
                        rs.getInt(AlternativaColuna.ID.get()),
                        rs.getString(AlternativaColuna.TEXTO.get()),
                        rs.getBoolean(AlternativaColuna.CORRETA.get())
                );
                index++;
            }
        } catch (SQLException e) {
            throw new RuntimeException(e); // tratar o erro
        }
        // Retornar lista de alternativas
        return alternativas;
    }
}
