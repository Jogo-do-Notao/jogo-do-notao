package com.poliedro.jogodonotao.pergunta;

public class Pergunta {
    private int idPergunta;
    private String enunciado;
    private DificuldadePergunta dificuldade;

    public Pergunta() {}

    public Pergunta(int idPergunta, String enunciado, DificuldadePergunta dificuldade) {
        this.idPergunta = idPergunta;
        this.enunciado = enunciado;
        this.dificuldade = dificuldade;
    }

    public int getIdPergunta() {
        return idPergunta;
    }

    public void setIdPergunta(int idPergunta) {
        this.idPergunta = idPergunta;
    }

    public String getEnunciado() {
        return enunciado;
    }

    public void setEnunciado(String enunciado) {
        this.enunciado = enunciado;
    }

    public DificuldadePergunta getDificuldade() {
        return dificuldade;
    }

    public void setDificuldade(DificuldadePergunta dificuldade) {
        this.dificuldade = dificuldade;
    }
}
