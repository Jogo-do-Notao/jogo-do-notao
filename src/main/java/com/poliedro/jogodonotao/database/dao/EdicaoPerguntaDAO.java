package com.poliedro.jogodonotao.database.dao;

public class EdicaoPerguntaDAO {
    /**
     * Colunas da tabela {@code edicao_pergunta}.
     */
    private enum EdicaoPerguntaColuna {
        // Colunas
        ID("id_edicao_pergunta"),
        PERGUNTA("id_pergunta"),
        PROFESSOR("id_professor"),
        DATA_HORA("data_hora");

        // Construtor
        private final String coluna;

        EdicaoPerguntaColuna(String coluna) {
            this.coluna = coluna;
        }

        // Getter do valor
        public String get() {
            return coluna;
        }
    }
}
