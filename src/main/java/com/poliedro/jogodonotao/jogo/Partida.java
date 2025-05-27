package com.poliedro.jogodonotao.jogo;

import com.poliedro.jogodonotao.agrupadores.Materia;
import com.poliedro.jogodonotao.pergunta.Pergunta;
import com.poliedro.jogodonotao.usuario.Aluno;

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

}
