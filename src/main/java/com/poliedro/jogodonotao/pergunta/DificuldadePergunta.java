package com.poliedro.jogodonotao.pergunta;

import com.poliedro.jogodonotao.jogo.PartidaStatus;

public enum DificuldadePergunta {
    // Dificuldades possíveis
    FACIL("Fácil"),
    MEDIO("Médio"),
    DIFICIL("Difícil");

    // Construtor
    private final String dificuldade;

    DificuldadePergunta(String dificuldade) {
        this.dificuldade = dificuldade;
    }

    // Getter do valor
    public String get() {
        return dificuldade;
    }

    /**
     * Converter texto salvo no banco de dados para o enum correto.
     */
    public static DificuldadePergunta fromString(String status) {
        for (DificuldadePergunta ps : DificuldadePergunta.values()) {
            if (ps.get().equalsIgnoreCase(status) || ps.name().equalsIgnoreCase(status)) {
                return ps;
            }
        }
        throw new IllegalArgumentException("Status inválido: " + status);
    }
}
