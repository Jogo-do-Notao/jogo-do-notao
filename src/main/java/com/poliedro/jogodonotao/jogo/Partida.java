package com.poliedro.jogodonotao.jogo;

import com.poliedro.jogodonotao.agrupadores.Materia;
import com.poliedro.jogodonotao.pergunta.Pergunta;
import com.poliedro.jogodonotao.usuario.Aluno;

import java.text.NumberFormat;
import java.util.Locale;

/**
 * Classe que representa uma partida do jogo.
 */
public class Partida {
    // Atributos
    /**
     * ID da partida no banco de dados.
     */
    private int id;
    /**
     * Aluno que criou a partida.
     */
    private Aluno aluno;
    /**
     * Matéria da partida (se for {@code null}, partida é de todas as matérias).
     */
    private Materia materia;
    /**
     * Status da partida (em andamento, ganha, perdida ou abandonada).
     */
    private PartidaStatus status;
    /**
     * Rodada atual (entre 1 e 15).
     */
    private int rodada;
    /**
     * Perguntas feitas durante a partida.
     */
    private Pergunta[] perguntas;
    /**
     * Pontuação acumulada na partida.
     */
    private int pontuacaoAcumulada = 0;
    /**
     * Pontuação do último checkpoint.
     */
    private int pontuacaoCheckpoint = 0;
    /**
     * Usos da ajuda de eliminar alternativas.
     */
    private int ajudaEliminar = 0;
    /**
     * Usos da ajuda de exibir dica do professor.
     */
    private int ajudaDica = 0;
    /**
     * Usos da ajuda de pular pergunta.
     */
    private int ajudaPular = 0;

    // Construtor
    public Partida(
            int id,
            Aluno aluno,
            Materia materia,
            PartidaStatus status,
            int rodada,
            Pergunta[] perguntas,
            int pontuacaoAcumulada,
            int pontuacaoCheckpoint,
            int ajudaEliminar,
            int ajudaDica,
            int ajudaPular
    ) {
        this.id = id;
        this.aluno = aluno;
        this.materia = materia;
        this.status = status;
        this.rodada = rodada;
        this.perguntas = perguntas;
        this.pontuacaoAcumulada = pontuacaoAcumulada;
        this.pontuacaoCheckpoint = pontuacaoCheckpoint;
        this.ajudaEliminar = ajudaEliminar;
        this.ajudaDica = ajudaDica;
        this.ajudaPular = ajudaPular;
    }

    // Getters

    public int getId() {
        return id;
    }

    public Aluno getAluno() {
        return aluno;
    }

    public Materia getMateria() {
        return materia;
    }

    public PartidaStatus getStatus() {
        return status;
    }

    public String getStatusText() {
        return status.get();
    }

    public int getRodada() {
        return rodada;
    }

    public Pergunta[] getPerguntas() {
        return perguntas;
    }

    public int getPontuacaoAcumulada() {
        return pontuacaoAcumulada;
    }

    public String getPontuacaoAcumuladaFormatada() {
        NumberFormat formatoMoeda = NumberFormat
                .getCurrencyInstance(new Locale("pt", "BR"));
        return formatoMoeda.format(this.pontuacaoAcumulada);
    }

    public int getPontuacaoCheckpoint() {
        return pontuacaoCheckpoint;
    }

    public String getPontuacaoCheckpointFormatada() {
        NumberFormat formatoMoeda = NumberFormat
                .getCurrencyInstance(new Locale("pt", "BR"));
        return formatoMoeda.format(this.pontuacaoCheckpoint);
    }


    public int getAjudaEliminar() {
        return ajudaEliminar;
    }

    public int getAjudaDica() {
        return ajudaDica;
    }

    public int getAjudaPular() {
        return ajudaPular;
    }
}
