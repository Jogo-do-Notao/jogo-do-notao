package com.poliedro.jogodonotao.database.dao;

import com.poliedro.jogodonotao.agrupadores.Materia;
import com.poliedro.jogodonotao.database.ConexaoDB;
import com.poliedro.jogodonotao.usuario.Aluno;

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

    /**
     * Busca e retorna uma instância de Matéria a partir de seu ID.
     *
     * @param id ID da matéria no banco de dados usado para busca.
     * @return Instância da matéria correspondente ou {@code null} se ela não for encontrada.
     */
    public static Materia buscarPorId(int id) {
        // Query SQL
        final String sql = "SELECT * FROM materia WHERE " + MateriaColuna.ID.get() + " = ?";

        // Executar query
        try (
                Connection conexao = ConexaoDB.getConnection();
                PreparedStatement stmt = conexao.prepareStatement(sql)
        ) {
            // Substituir placeholder
            stmt.setInt(1, id); // e-mail sendo buscado
            // Executar query e obter resultado
            ResultSet res = stmt.executeQuery();

            // Extrair tupla correspondente
            if (res.next()) {
                // criar e retornar instância
                return new Materia(res.getInt(MateriaColuna.ID.get()), res.getString(MateriaColuna.NOME.get()));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e); // tratar o erro
        }
        // Se matéria não for encontrada
        return null;
    }
}
