package com.poliedro.jogodonotao.pergunta;

public enum DificuldadePergunta {
        FACIL("Fácil"),
        MEDIA("Médio"),
        DIFICIL("Difícil");

        private final String descricao;

        DificuldadePergunta(String descricao) {
                this.descricao = descricao;
        }

        public String getDescricao() {
                return descricao;
        }

        public static DificuldadePergunta fromDescricao(String descricao) {
                for (DificuldadePergunta dificuldade : values()) {
                        if (dificuldade.descricao.equals(descricao)) {
                                return dificuldade;
                        }
                }
                throw new IllegalArgumentException("Dificuldade não encontrada: " + descricao);
        }
}
