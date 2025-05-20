package com.poliedro.jogodonotao.usuario;

import com.poliedro.jogodonotao.agrupadores.Turma;
import com.poliedro.jogodonotao.pergunta.Pergunta;

import java.util.ArrayList;

/**
 * Classe que representa um aluno do jogo.
 */
public class Aluno extends Usuario {
    /**
     * Sessão ativa do aluno.
     * Representa o aluno que está logado no momento.
     */
    private static Aluno sessaoAtiva;
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

    // Construtor
    public Aluno(int id, String nome, String email, String ra, String hashSenha, long pontuacao /*Turma turma*/) {
        this.id = id;
        this.nome = nome;
        this.email = email;
        this.ra = ra;
        this.hashSenha = hashSenha;
        this.pontuacao = pontuacao;
    }

    // Getters
    public static Aluno getSessaoAtiva() {
        return sessaoAtiva;
    }

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
