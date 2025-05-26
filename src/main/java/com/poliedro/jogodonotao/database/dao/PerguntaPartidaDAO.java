package com.poliedro.jogodonotao.database.dao;

public class PerguntaPartidaDAO {
    /**
     * Colunas da tabela {@code pergunta_partida}.
     */
    private enum PerguntaPartidaColuna {
        // Colunas
        ID("id_pergunta"),
        PARTIDA("id_partida"),
        RODADA("rodada");

        // Construtor
        private final String coluna;

        PerguntaPartidaColuna(String coluna) {
            this.coluna = coluna;
        }

        // Getter do valor
        public String get() {
            return coluna;
        }
    }
}
