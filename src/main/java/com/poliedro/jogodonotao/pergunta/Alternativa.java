package com.poliedro.jogodonotao.pergunta;

public class Alternativa {
    private int id;
    private String texto;
    private boolean correta;

    public Alternativa() {
    }

    public Alternativa(int id, String texto, boolean correta) {
        this.id = id;
        this.texto = texto;
        this.correta = correta;
    }

    public int getId() {
        return id;
    }

    public String getTexto() {
        return texto;
    }

    public boolean isCorreta() {
        return correta;
    }
}
