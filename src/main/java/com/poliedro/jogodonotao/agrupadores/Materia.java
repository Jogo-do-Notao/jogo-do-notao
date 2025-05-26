package com.poliedro.jogodonotao.agrupadores;

/**
 * Matéria utilizada para classificar as perguntas e pontuações.
 */
public class Materia {
    // Atributos
    /**
     * ID da matéria no banco de dados.
     */
    private int id;
    /**
     * Nome da matéria.
     */
    private String nome;

    // Construtor
    public Materia(int id, String nome) {
        this.id = id;
        this.nome = nome;
    }

    // Getters
    public String getNome() {
        return nome;
    }

    public int getId() {
        return id;
    }
}
