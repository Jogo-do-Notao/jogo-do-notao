package com.poliedro.jogodonotao.database.dao;

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
}
