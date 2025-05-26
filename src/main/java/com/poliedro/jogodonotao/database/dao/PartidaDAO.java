package com.poliedro.jogodonotao.database.dao;

public class PartidaDAO {
    /** Colunas da tabela {@code partida}. */
    private enum PartidaColuna {
        // Colunas
        ID("id_partida"),
        ALUNO("id_aluno"),
        MATERIA("id_materia"),
        STATUS("status"),
        RODADA("rodada"),
        PONTUACAO_ACUMULADA("pontuacao_acumulada"),
        PONTUACAO_CHECKPOINT("pontuacao_checkpoint"),
        AJUDA_ELIMINAR("ajuda_eliminar"),
        AJUDA_DICA("ajuda_dica"),
        AJUDA_PULAR("ajuda_pular");


        // Construtor
        private final String coluna;

        PartidaColuna(String coluna) {
            this.coluna = coluna;
        }

        // Getter do valor
        public String get() {
            return coluna;
        }
    }
}
