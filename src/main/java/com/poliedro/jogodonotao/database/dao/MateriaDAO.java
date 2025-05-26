package com.poliedro.jogodonotao.database.dao;

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
}
