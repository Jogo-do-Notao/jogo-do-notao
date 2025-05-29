package com.poliedro.jogodonotao.pergunta;

public class Alternativa {
    private int idAlternativa;
    private String texto;
    private boolean correta;

    public Alternativa() {}

    public Alternativa(int idAlternativa, String texto, boolean correta) {
        this.idAlternativa = idAlternativa;
        this.texto = texto;
        this.correta = correta;
    }

    public int getIdAlternativa() {
        return idAlternativa;
    }

    public void setIdAlternativa(int idAlternativa) {
        this.idAlternativa = idAlternativa;
    }

    public String getTexto() {
        return texto;
    }

    public void setTexto(String texto) {
        this.texto = texto;
    }

    public boolean isCorreta() {
        return correta;
    }

    public void setCorreta(boolean correta) {
        this.correta = correta;
    }
}
