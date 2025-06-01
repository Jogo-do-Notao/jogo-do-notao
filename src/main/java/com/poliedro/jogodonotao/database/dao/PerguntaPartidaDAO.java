package com.poliedro.jogodonotao.database.dao;

/**
 * Classe DAO para a entidade PerguntaPartida.
 * Responsável por obter e manipular os dados da tabela {@code pergunta_partida} no banco de dados.
 */
public class PerguntaPartidaDAO {
    /**
     * Colunas da tabela {@code pergunta_partida}.
     */
    public enum PerguntaPartidaColuna {
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
