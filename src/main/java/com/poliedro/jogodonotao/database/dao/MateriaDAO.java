package com.poliedro.jogodonotao.database.dao;

import com.poliedro.jogodonotao.agrupadores.Materia;
import com.poliedro.jogodonotao.database.ConexaoDB;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 * Classe DAO para a entidade Matéria. Responsável por obter e manipular os dados da tabela {@code materia} no banco de dados.
 */
public class MateriaDAO {
    /**
     * Colunas da tabela {@code materia}.
     */
    private enum MateriaColuna {
        // Colunas
        ID("id_materia"),
        NOME("nome");

        // Construtor
        private final String coluna;

        MateriaColuna(String coluna) {
            this.coluna = coluna;
        }

        // Getter do valor
        public String get() {
            return coluna;
        }
    }

    /**
     * Obtêm uma lista com todas as matérias cadastradas no banco de dados.
     *
     * @return Uma lista com todas as matérias cadastradas no banco de dados.
     */
    public static ArrayList<Materia> obterMaterias() {
        // query SQL
        final String sql = "SELECT * FROM materia";
        // lista de matérias

        ArrayList<Materia> materias = new ArrayList<>();

        // Executar query
        try (
                Connection conexao = ConexaoDB.getConnection();
                PreparedStatement stmt = conexao.prepareStatement(sql);
                ResultSet res = stmt.executeQuery()
        ) {
            // Extrair tuplas da tabela
            while (res.next()) {
                // extrair atributos
                int id = res.getInt(MateriaColuna.ID.get());
                String nome = res.getString(MateriaColuna.NOME.get());
                // adicionar a lista
                materias.add(new Materia(id, nome));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e); // tratamento de erro
        }
        // retornar lista de matérias
        return materias;
    }

    // Teste
    public static void main(String[] args) {
        ArrayList<Materia> materias = obterMaterias();

        System.out.println("Matérias:");
        for (Materia materia : materias) {
            System.out.println("\t- " + materia.getNome());
        }
    }
}
