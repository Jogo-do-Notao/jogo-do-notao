package com.poliedro.jogodonotao.database.dao;

public class PontuacaoMateriaDAO {
    /**
     * Colunas da tabela {@code pontuacao_materia}.
     */
    private enum PontuacaoMateria {
        // Colunas
        ALUNO("id_aluno"),
        MATERIA("id_materia"),
        PONTUACAO("pontuacao");

        // Construtor
        private final String coluna;

        PontuacaoMateria(String coluna) {
            this.coluna = coluna;
        }

        // Getter do valor
        public String get() {
            return coluna;
        }
    }
}
