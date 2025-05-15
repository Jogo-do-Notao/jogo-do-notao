package com.poliedro.jogodonotao.usuario;

import com.poliedro.jogodonotao.agrupadores.Turma;
import com.poliedro.jogodonotao.pergunta.Pergunta;

import java.util.ArrayList;

/**
 * Classe que representa um aluno do jogo.
 */
public class Aluno extends Usuario {
    /**
     * RA (registro de matrícula) do aluno.
     */
    private String ra;
    /**
     * Pontuação total do aluno.
     */
    private long pontuacao = 0;
    /**
     * Turma do aluno.
     */
    private Turma turma;
    /**
     * Lista de perguntas que já foram respondidas pelo aluno.
     */
    private ArrayList<Pergunta> perguntasRespondidas = new ArrayList<>();
    /**
     * Pontuação do aluno para cada matéria.
     */
    private ArrayList<PontuacaoMateria> pontuacaoMateria = new ArrayList<>();

    // Getters
    public String getRa() {
        return ra;
    }

    public long getPontuacao() {
        return pontuacao;
    }

    public Turma getTurma() {
        return turma;
    }

    public ArrayList<Pergunta> getPerguntasRespondidas() {
        return perguntasRespondidas;
    }

    public ArrayList<PontuacaoMateria> getPontuacaoMateria() {
        return pontuacaoMateria;
    }
}
