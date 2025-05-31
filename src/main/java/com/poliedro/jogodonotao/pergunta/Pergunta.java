package com.poliedro.jogodonotao.pergunta;

import com.poliedro.jogodonotao.usuario.Professor;

public class Pergunta {
    private int id;
    private String enunciado;
    private Alternativa[] alternativas;
    private DificuldadePergunta dificuldade;
    private String dica;
    private Professor criador;

    public Pergunta(int id, String enunciado, Alternativa[] alternativas, DificuldadePergunta dificuldade, String dica, Professor criador) {
        this.id = id;
        this.enunciado = enunciado;
        this.alternativas = alternativas;
        this.dificuldade = dificuldade;
        this.dica = dica;
        this.criador = criador;
    }

    // Getters
    public int getId() {
        return id;
    }

    public String getEnunciado() {
        return enunciado;
    }

    public Alternativa[] getAlternativas() {
        return alternativas;
    }

    public DificuldadePergunta getDificuldade() {
        return dificuldade;
    }

    public String getDica() {
        return dica;
    }

    public Professor getCriador() {
        return criador;
    }
}
