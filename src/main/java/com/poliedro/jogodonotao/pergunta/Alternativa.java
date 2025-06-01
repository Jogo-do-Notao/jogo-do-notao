package com.poliedro.jogodonotao.pergunta;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;

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

    public void setTexto(String texto) {
        this.texto = texto;
    }

    public boolean isCorreta() {
        return correta;
    }

    /**
     * Embaralha as alternativas de uma pergunta.
     *
     * @param alternativas Array de alternativas a serem embaralhadas.
     * @return Um novo array de alternativas embaralhadas.
     */
    public static Alternativa[] embaralhar(Alternativa[] alternativas) {
        // Converter para lista
        List<Alternativa> lista = Arrays.asList(alternativas);
        // Embaralhar a lista
        Collections.shuffle(lista);
        // Retornar como array
        return lista.toArray(new Alternativa[5]);
    }
}
