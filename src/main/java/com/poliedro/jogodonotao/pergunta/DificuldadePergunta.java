package com.poliedro.jogodonotao.pergunta;

public enum DificuldadePergunta {
        FACIL("Fácil"),
        MEDIA("Média"),
        DIFICIL("Difícil");

        private final String descricao;

        DificuldadePergunta(String descricao) {
                this.descricao = descricao;
        }

        public String getDescricao() {
                return descricao;
        }
}
