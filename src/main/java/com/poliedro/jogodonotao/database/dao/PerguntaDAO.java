package com.poliedro.jogodonotao.database.dao;

public class PerguntaDAO {
    /**
     * Colunas da tabela {@code aluno}.
     */
    private enum PerguntaColuna {
        // Colunas
        ID("id_pergunta"),
        MATERIA("id_materia"),
        CRIADOR("criador"),
        ENUNCIADO("titulo"),
        DIFICULDADE("dificuldade"),
        DICA("dica");

        // Construtor
        private final String coluna;

        PerguntaColuna(String coluna) {
            this.coluna = coluna;
        }

        // Getter do valor
        public String get() {
            return coluna;
        }
    }
}
