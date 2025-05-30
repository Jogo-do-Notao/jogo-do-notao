package com.poliedro.jogodonotao.pergunta;

public enum DificuldadePergunta {
    // Dificuldades possíveis
    FACIL,
    MEDIO,
    DIFICIL;

    // Construtor
    private final String dificuldade;

    DificuldadePergunta(String dificuldade) {
        this.dificuldade = dificuldade;
    }

    // Getter do valor
    public String get() {
        return dificuldade;
    }
}
