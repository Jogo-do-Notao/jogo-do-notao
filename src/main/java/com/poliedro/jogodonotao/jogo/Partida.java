package com.poliedro.jogodonotao.jogo;

import com.poliedro.jogodonotao.agrupadores.Materia;
import com.poliedro.jogodonotao.database.dao.PartidaDAO;
import com.poliedro.jogodonotao.pergunta.Pergunta;
import com.poliedro.jogodonotao.usuario.Aluno;

import java.text.NumberFormat;
import java.util.Locale;

/**
 * Classe que representa uma partida do jogo.
 */
public class Partida {
    // Atributos estáticos
    /**
     * Partida que está sendo jogada no momento.
     */
    private static Partida partidaEmAndamento;
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

    /**
     * Construtor da classe {@code Partida} com todos os atributos.
     */
    public Partida(
            int id, Aluno aluno, Materia materia, PartidaStatus status, int rodada, Pergunta[] perguntas, int pontuacaoAcumulada, int pontuacaoCheckpoint, int ajudaEliminar, int ajudaDica, int ajudaPular
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

    /**
     * Construtor da classe {@code Partida} para o aluno atual.
     */
    public Partida(
            int id, Materia materia, PartidaStatus status, int rodada, Pergunta[] perguntas, int pontuacaoAcumulada, int pontuacaoCheckpoint, int ajudaEliminar, int ajudaDica, int ajudaPular
    ) {
        this(
                id, Aluno.getSessaoAtiva(), materia, status, rodada, perguntas,
                pontuacaoAcumulada, pontuacaoCheckpoint, ajudaEliminar, ajudaDica, ajudaPular
        );
    }

    /**
     * Construtor da classe {@code Partida} para partida que acabou de ser criada.
     */
    public Partida(int id, Materia materia) {
        this(
                id, materia, PartidaStatus.ANDAMENTO, 1, new Pergunta[15], 0, 0, 0, 0, 0
        );
    }

    // Getters
    public static Partida getPartidaEmAndamento() {
        return partidaEmAndamento;
    }

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

    /**
     * Cria uma nova partida no banco de dados e depois inicia ela.
     *
     * @materia Matéria selecionada pelo aluno ou opção "Todas as Matérias".
     */
    public static Partida criarPartida(Materia materia) {
        // Criar partida no banco de dados
        Partida novaPartida = PartidaDAO.criarPartida(materia);

        // Atribui nova partida a partida em andamento
        partidaEmAndamento = novaPartida;

        return partidaEmAndamento;
    }
}
