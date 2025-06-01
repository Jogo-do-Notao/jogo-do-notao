package com.poliedro.jogodonotao.jogo;

import com.poliedro.jogodonotao.App;
import com.poliedro.jogodonotao.agrupadores.Materia;
import com.poliedro.jogodonotao.database.dao.PartidaDAO;
import com.poliedro.jogodonotao.database.dao.PerguntaDAO;
import com.poliedro.jogodonotao.pergunta.Alternativa;
import com.poliedro.jogodonotao.pergunta.DificuldadePergunta;
import com.poliedro.jogodonotao.pergunta.Pergunta;
import com.poliedro.jogodonotao.usuario.Aluno;
import com.poliedro.jogodonotao.utils.Formatador;
import javafx.animation.PauseTransition;
import javafx.scene.control.Alert;
import javafx.util.Duration;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Random;

/**
 * Classe que representa uma partida do jogo.
 */
public class Partida {
    // Atributos estáticos
    /**
     * Partida que está sendo jogada no momento.
     */
    private static Partida partidaEmAndamento;
    /**
     * Valores do prêmio de cada rodada.
     * Usado para calcular a pontuação acumulada do aluno até chegar em 1 milhão na última rodada (15º).
     */
    private static final int[] premioPorRodada = {500, 500, 1_000, 1_000, 2_000, 5_000, 5_000, 5_000, 10_000, 20_000, 50_000, 50_000, 150_000, 200_000, 500_000};
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
        return Formatador.formatoMonetario(this.pontuacaoAcumulada);
    }

    public int getPontuacaoCheckpoint() {
        return pontuacaoCheckpoint;
    }

    public String getPontuacaoCheckpointFormatada() {
        return Formatador.formatoMonetario(this.pontuacaoCheckpoint);
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
     * Retorna o prêmio ganho na rodada atual ao acertar a pergunta.
     */
    public int getGanhoNaRodada() {
        return premioPorRodada[this.rodada - 1];
    }

    /**
     * Retorna o prêmio, formatado como monetário, ganho na rodada atual ao acertar a pergunta.
     */
    public String getGanhoNaRodadaFormatada() {
        return Formatador.formatoMonetario(premioPorRodada[this.rodada - 1]);
    }

    /**
     * Retorna a dificuldade da partida, dependendo da rodada atual.
     * Dificuldade é definida como:
     * - Fácil: Rodadas 1 a 5
     * - Médio: Rodadas 6 a 10
     * - Difícil: Rodadas 11 a 15
     *
     * @return Enumeration {@code DificuldadePergunta} correspondente à rodada atual.
     */
    public DificuldadePergunta getDificuldade() {
        if (rodada <= 5) {
            return DificuldadePergunta.FACIL;
        } else if (rodada <= 10) {
            return DificuldadePergunta.MEDIO;
        } else {
            return DificuldadePergunta.DIFICIL;
        }
    }

    // Setters

    /**
     * Aumentar pontuação acumulada da partida.
     */
    public void addPontuacaoAcumulada() {
        this.pontuacaoAcumulada += this.getGanhoNaRodada(); // atualizar objeto
        PartidaDAO.atualizarPartida(this, PartidaDAO.PartidaColuna.PONTUACAO_ACUMULADA); // atualizar no db
    }

    /**
     * Incrementa a rodada atual da partida.
     */
    public void proximaRodada() {
        this.rodada++; // atualizar objeto
        PartidaDAO.atualizarPartida(this, PartidaDAO.PartidaColuna.RODADA); // atualizar no db
    }

    /**
     * Salva a pontuação acumulada atual como pontuação de checkpoint.
     */
    public void salvarCheckpoint() {
        this.pontuacaoCheckpoint = this.pontuacaoAcumulada; // atualizar objeto
        PartidaDAO.atualizarPartida(this, PartidaDAO.PartidaColuna.PONTUACAO_CHECKPOINT); // atualizar no db

    }

    /**
     * Atualiza o status da partida.
     */
    public void setStatus(PartidaStatus status) {
        this.status = status; // atualizar objeto
        PartidaDAO.atualizarPartida(this, PartidaDAO.PartidaColuna.STATUS);
    }

    /**
     * Cria uma nova partida no banco de dados e depois abre a Tela de Partida com a nova partida criada.
     *
     * @param materia Matéria selecionada pelo aluno ou opção "Todas as Matérias".
     */
    public static void criarPartida(Materia materia) {
        // Exibir mensagem de criando partida
        Alert alert = new Alert(Alert.AlertType.INFORMATION);
        alert.setTitle("Criando Partida");
        alert.setHeaderText("Criando Partida...");
        alert.setContentText("A partida está sendo criada.\n\nMatéria selecionada: " + (
                materia == null ? "Todas as Matérias" : materia.getNome()) + ".");
        alert.show();

        // Criar partida no banco de dados e atribuir nova partida a partida em andamento
        assert materia != null; // Garantir que a matéria não é nula
        partidaEmAndamento = PartidaDAO.criarPartida(materia);

        // Espera 1 segundo antes de trocar a cena e fechar o alerta
        PauseTransition pause = new PauseTransition(Duration.seconds(1));
        pause.setOnFinished(event -> {
            try {
                App.changeScene("area-aluno/partida/tela-partida", "Partida em Andamento");
            } catch (IOException e) {
                e.printStackTrace();
            }
            alert.close();
        });
        pause.play();
    }

    /**
     * Sorteia uma pergunta aleatória que o aluno não respondeu anteriormente.
     */
    public Pergunta sortearPergunta() {
        // Obter array com ids perguntas disponíveis
        ArrayList<Integer> listaPerguntas = PerguntaDAO.obterListaDeSorteio(this);
        System.out.println(listaPerguntas); // DEBUG

        // Sortear pergunta aleatória
        Random rd = new Random();
        return PerguntaDAO.buscarPorId(
                listaPerguntas.get(rd.nextInt(listaPerguntas.size()))
        );
    }

    /**
     * Verifica se a alternativa selecionada é a correta e exibe uma mensagem.
     *
     * @param selecionada Alternativa selecionada pelo aluno.
     * @param correta     Alternativa correta da pergunta.
     * @return {@code true} se a resposta estiver correta, {@code false} caso contrário.
     */
    public boolean verificarResposta(
            Alternativa selecionada, Alternativa correta
    ) {
        if (selecionada.isCorreta()) {
            /* Resposta está correta */
            // Exibir mensagem de resposta correta
            Alert alert = new Alert(Alert.AlertType.INFORMATION);
            alert.setTitle("Resposta Correta");
            alert.setHeaderText("Resposta Correta!");
            alert.setContentText("Parabéns! Você acertou a resposta.\n\nVocê ganhou " + this.getGanhoNaRodadaFormatada() + "  nesta rodada.");
            alert.show();

            // Atualizar pontuação acumulada
            this.addPontuacaoAcumulada();
            // Incrementar rodada
            this.proximaRodada();
            // Se for checkpoint, salvar pontuação
            if (this.rodada == 6 || this.rodada == 11) {
                // Salvar pontuação
                this.salvarCheckpoint();

                // Exibir mensagem de checkpoint
                Alert checkpointAlert = new Alert(Alert.AlertType.INFORMATION);
                checkpointAlert.setTitle("Checkpoint Atingido");
                checkpointAlert.setHeaderText("Checkpoint Atingido!");
                checkpointAlert.setContentText("Parabéns! Você atingiu um checkpoint.\n\nSua pontuação atual é: " + this.getPontuacaoCheckpointFormatada() + ".");
            }
        } else {
            /* Resposta está errada */
            // Exibir mensagem de resposta incorreta
            Alert alert = new Alert(Alert.AlertType.ERROR);
            alert.setTitle("Resposta Errada");
            alert.setHeaderText("Resposta Errada!");
            alert.setContentText("Você errou a resposta. \n\nA resposta correta era: " + correta.getTexto() + ".");
            alert.showAndWait();
        }
        return selecionada.isCorreta();
    }

    /**
     * Encerra a partida após responder corretamente todas as perguntas e atingir o prêmio máximo.
     */
    public void vitoria() {
        // Atualizar status da partida
        this.setStatus(PartidaStatus.GANHA);
        // Atualizar pontuação do aluno
        this.aluno.setPontuacao(this.getPontuacaoAcumulada());

        // Redirecionar para a tela de fim da partida
        try {
            App.changeScene("area-aluno/partida/tela-partida-concluida", "Partida Concluída");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
