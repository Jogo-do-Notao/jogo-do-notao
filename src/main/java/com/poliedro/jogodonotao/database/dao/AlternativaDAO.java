package com.poliedro.jogodonotao.database.dao;

import com.poliedro.jogodonotao.database.ConexaoDB;
import com.poliedro.jogodonotao.pergunta.Alternativa;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 * Classe DAO para a entidade Alternativa.
 * Responsável por obter e manipular os dados da tabela {@code alternativa} no banco de dados.
 */
public class AlternativaDAO {
    /**
     * Colunas da tabela {@code alternativa}.
     */
    private enum AlternativaColuna {
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

    public static ArrayList<Alternativa> obterAlternativa(int idPergunta) {
        final String sql = String.format("SELECT * FROM alternativa WHERE %s = ?",
            AlternativaColuna.PERGUNTA.get());
        ArrayList<Alternativa> alternativas = new ArrayList<>();
        
        try (Connection conexao = ConexaoDB.getConnection();
             PreparedStatement stmt = conexao.prepareStatement(sql);
             ResultSet res = stmt.executeQuery()) {
            
            stmt.setInt(1, idPergunta);
            var rs = stmt.executeQuery();
            
            while (rs.next()) {
                var alternativa = new Alternativa();
                alternativa.setIdAlternativa(rs.getInt(AlternativaColuna.ID.get()));
                alternativa.setTexto(rs.getString(AlternativaColuna.TEXTO.get()));
                alternativa.setCorreta(rs.getBoolean(AlternativaColuna.CORRETA.get()));
                alternativas.add(alternativa);
            }
            
        } catch (SQLException e) {
            e.printStackTrace();
            // Considerar usar um sistema de logging adequado em produção
        }

        return alternativas;
    }
}
