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
import javafx.scene.control.ButtonType;
import javafx.util.Duration;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Optional;
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
    private static final int[] PREMIO_POR_RODADA = {500, 500, 1_000, 1_000, 2_000, 5_000, 5_000, 5_000, 10_000, 20_000, 50_000, 50_000, 150_000, 200_000, 500_000};
    // Preços das ajudas
    /**
     * Lista de preço para usar a ajuda de eliminar alternativas para cada nível de dificuldade (fácil, médio e difícil).
     */
    private static final int[] PRECO_AJUDA_ELIMINAR = {800, 4_000, 40_000};
    /**
     * Lista de preço para usar a ajuda de exibir dica do professor para cada nível de dificuldade (fácil, médio e difícil).
     */
    private static final int[] PRECO_AJUDA_DICA = {250, 1_500, 10_000};
    /**
     * Lista de preço para usar a ajuda de pular pergunta para cada nível de dificuldade (fácil, médio e difícil).
     */
    private static final int[] PRECO_AJUDA_PULAR = {500, 3_000, 25_000};

    // Atributos
    /**
     * ID da partida no banco de dados.
     */
    private final int ID;
    /**
     * Aluno que criou a partida.
     */
    private final Aluno ALUNO;
    /**
     * Matéria da partida (se for {@code null}, partida é de todas as matérias).
     */
    private final Materia MATERIA;
    /**
     * Status da partida (em andamento, ganha, perdida ou abandonada).
     */
    private PartidaStatus status;
    /**
     * Rodada atual (entre 1 e 15).
     */
    private int rodada = 1;
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
            int ID, Aluno ALUNO, Materia MATERIA, PartidaStatus status, int rodada, Pergunta[] perguntas, int pontuacaoAcumulada, int pontuacaoCheckpoint, int ajudaEliminar, int ajudaDica, int ajudaPular
    ) {
        this.ID = ID;
        this.ALUNO = ALUNO;
        this.MATERIA = MATERIA;
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
            int ID, Materia MATERIA, PartidaStatus status, int rodada, Pergunta[] perguntas, int pontuacaoAcumulada, int pontuacaoCheckpoint, int ajudaEliminar, int ajudaDica, int ajudaPular
    ) {
        this(
                ID, Aluno.getSessaoAtiva(), MATERIA, status, rodada, perguntas,
                pontuacaoAcumulada, pontuacaoCheckpoint, ajudaEliminar, ajudaDica, ajudaPular
        );
    }

    /**
     * Construtor da classe {@code Partida} para partida que acabou de ser criada.
     */
    public Partida(int ID, Materia MATERIA) {
        this(
                ID, MATERIA, PartidaStatus.ANDAMENTO, 1, new Pergunta[15], 0, 0, 0, 0, 0
        );
    }

    // Getters estáticos
    public static Partida getPartidaEmAndamento() {
        return partidaEmAndamento;
    }

    /**
     * Getter do preço da ajuda de eliminar alternativas, dependendo da dificuldade da partida.
     */
    public int getPrecoAjudaEliminar() {
        return switch (this.getDificuldade()) {
            case FACIL -> PRECO_AJUDA_ELIMINAR[0];
            case MEDIO -> PRECO_AJUDA_ELIMINAR[1];
            case DIFICIL -> PRECO_AJUDA_ELIMINAR[2];
        };
    }

    /**
     * Getter do preço da ajuda de eliminar alternativas, formatado como monetário.
     */
    public String getPrecoAjudaEliminarFormatado() {
        return Formatador.formatoMonetario(this.getPrecoAjudaEliminar());
    }

    /**
     * Getter do preço da ajuda de exibir dica do professor, dependendo da dificuldade da partida.
     */
    public int getPrecoAjudaDica() {
        return switch (this.getDificuldade()) {
            case FACIL -> PRECO_AJUDA_DICA[0];
            case MEDIO -> PRECO_AJUDA_DICA[1];
            case DIFICIL -> PRECO_AJUDA_DICA[2];
        };
    }

    /**
     * Getter do preço da ajuda de exibir dica do professor, formatado como monetário.
     */
    public String getPrecoAjudaDicaFormatado() {
        return Formatador.formatoMonetario(this.getPrecoAjudaDica());
    }

    /**
     * Getter do preço da ajuda de pular pergunta, dependendo da dificuldade da partida.
     */
    public int getPrecoAjudaPular() {
        return switch (this.getDificuldade()) {
            case FACIL -> PRECO_AJUDA_PULAR[0];
            case MEDIO -> PRECO_AJUDA_PULAR[1];
            case DIFICIL -> PRECO_AJUDA_PULAR[2];
        };
    }

    /**
     * Getter do preço da ajuda de pular pergunta, formatado como monetário.
     */
    public String getPrecoAjudaPularFormatado() {
        return Formatador.formatoMonetario(this.getPrecoAjudaPular());
    }

    // Getters de objetos

    public int getID() {
        return ID;
    }

    public Aluno getALUNO() {
        return ALUNO;
    }

    public Materia getMATERIA() {
        return MATERIA;
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

    /**
     * Getter das perguntas feitas durante a partida atual.
     */
    public Pergunta[] getPerguntas() {
        return perguntas;
    }

    /**
     * Getter da pergunta da rodada atual.
     */
    public Pergunta getPerguntaAtual() {
        return this.perguntas[this.rodada - 1];
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
        return PREMIO_POR_RODADA[this.rodada - 1];
    }

    /**
     * Retorna o prêmio, formatado como monetário, ganho na rodada atual ao acertar a pergunta.
     */
    public String getGanhoNaRodadaFormatada() {
        return Formatador.formatoMonetario(PREMIO_POR_RODADA[this.rodada - 1]);
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
        this.setPontuacaoAcumulada(this.getGanhoNaRodada());
    }

    /**
     * Desconta um valor da pontuação acumulada da partida.
     *
     * @param valor Valor a ser descontado da pontuação acumulada.
     */
    public void subPontuacaoAcumulada(int valor) {
        this.setPontuacaoAcumulada(valor * -1);
    }

    /**
     * Setter da pontuação acumulada.
     *
     * @param pontuacaoAcumulada Valor que será adicionado (ou subtraído se for negativo) da pontuação acumulada.
     */
    public void setPontuacaoAcumulada(int pontuacaoAcumulada) {
        this.pontuacaoAcumulada += pontuacaoAcumulada; // atualizar objeto
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
        PartidaDAO.atualizarPartida(this, PartidaDAO.PartidaColuna.STATUS); // atualizar no db
    }

    /**
     * Registra o uso da ajuda de eliminar alternativas na partida.
     * Incrementa o contador de uso da ajuda e desconta o preço da ajuda da pontuação acumulada.
     */
    public void usoAjudaEliminar() {
        // incrementar uso da ajuda
        this.ajudaEliminar++; // atualizar objeto
        PartidaDAO.atualizarPartida(this, PartidaDAO.PartidaColuna.AJUDA_ELIMINAR); // atualizar no db
        // Descontar o preço da ajuda
        this.subPontuacaoAcumulada(this.getPrecoAjudaEliminar());
    }

    /**
     * Registra o uso da ajuda de exibir dica do professor na partida.
     * Incrementa o contador de uso da ajuda e desconta o preço da ajuda da pontuação acumulada.
     */
    public void addAjudaDica() {
        // incrementar uso da ajuda
        this.ajudaDica++; // atualizar objeto
        PartidaDAO.atualizarPartida(this, PartidaDAO.PartidaColuna.AJUDA_DICA);
        // Descontar o preço da ajuda
        this.subPontuacaoAcumulada(this.getPrecoAjudaDica());
    }

    /**
     * Registra o uso da ajuda de pular pergunta na partida.
     * Incrementa o contador de uso da ajuda e desconta o preço da ajuda da pontuação acumulada.
     */
    public void addAjudaPular() {
        // incrementar uso da ajuda
        this.ajudaPular++; // atualizar objeto
        PartidaDAO.atualizarPartida(this, PartidaDAO.PartidaColuna.AJUDA_PULAR);
        // Descontar o preço da ajuda
        this.subPontuacaoAcumulada(this.getPrecoAjudaPular());
    }


    // Métodos

    /**
     * Cria uma nova partida no banco de dados e depois abre a Tela de Partida com a nova partida criada.
     *
     * @param materia Matéria selecionada pelo aluno ou opção "Todas as Matérias".
     */
    public static void criarPartida(Materia materia) {
        // Exibir mensagem de criando partida
        Alert msg = new Alert(Alert.AlertType.INFORMATION);
        msg.setTitle("Criando Partida");
        msg.setHeaderText("Criando Partida...");
        msg.setContentText("A partida está sendo criada.\n\nMatéria selecionada: " + (
                materia == null ? "Todas as Matérias" : materia.getNome()) + ".");
        msg.show();

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
            msg.close(); // fechar mensagem
        });
        pause.play();
    }

    /**
     * Retoma a partida em andamento.
     *
     * @param partida Partida em andamento que será retomada.
     */
    public static void continuarPartida(Partida partida) {
        // Exibir mensagem de retomando partida
        Alert msg = new Alert(Alert.AlertType.INFORMATION);
        msg.setTitle("Retomando Partida");
        msg.setHeaderText("Retomando Partida...");
        msg.setContentText("A partida está sendo retomada.\n" +
                "\nMatéria: " + (partida.getMATERIA() == null ? "Todas as Matérias" : partida.getMATERIA().getNome()) + "." +
                "\nRodada: " + partida.getRodada() + "/15" +
                "\nPontuação Acumulada: " + partida.getPontuacaoAcumuladaFormatada() + "." +
                "\nPontuação do Checkpoint: " + partida.getPontuacaoCheckpointFormatada() + ".");

        // Atribuir partida em andamento
        partidaEmAndamento = partida;

        // Espera 1 segundo antes de trocar a cena e fechar o alerta
        PauseTransition pause = new PauseTransition(Duration.seconds(1));
        pause.setOnFinished(event -> {
            try { // Abrir tela de partida
                App.changeScene("area-aluno/partida/tela-partida", "Partida em Andamento");
            } catch (IOException e) {
                e.printStackTrace();
            }
            msg.close(); // fechar mensagem
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
        Pergunta perguntaSorteada = PerguntaDAO.buscarPorId(
                listaPerguntas.get(rd.nextInt(listaPerguntas.size())));

        this.perguntas[this.rodada - 1] = perguntaSorteada; // Adicionar pergunta ao array
        return perguntaSorteada; // retornar pergunta sorteada
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
     * Salva e encerra a partida atual para posterior retorno.
     */
    public void sairPartida() {
        // Mensagem de saindo
        Alert msgSaindo = new Alert(Alert.AlertType.INFORMATION);
        msgSaindo.setTitle("Salvando Partida");
        msgSaindo.setHeaderText("Salvando partida...");
        msgSaindo.setContentText("Aguarde enquanto a partida é salva...");
        msgSaindo.show();

        // Encerrar partida em andamento
        encerrarPartida();

        // Redirecionar para o painel do aluno
        try {
            App.changeScene("area-aluno/painel-aluno", "Painel do Aluno");
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            msgSaindo.close(); // fechar mensagem de salvamento
        }
    }

    /**
     * Encerra a partida em andamento.
     */
    private static void encerrarPartida() {
        // Limpar partida em andamento
        partidaEmAndamento = null;
    }

    /**
     * Abandona a partida atual, mudando seu status para "abandonada" e adicionando a pontuação acumulada ao aluno.
     *
     * @param redirecionar Se deve redirecionar para a tela de fim da partida. (padrão: {@code true})
     */
    public void abandonar() {
        // Mensagem de confirmação
        Alert msgConfirmacao = new Alert(Alert.AlertType.CONFIRMATION);
        msgConfirmacao.setTitle("Desistir da Partida");
        msgConfirmacao.setHeaderText("Você tem certeza que deseja desistir da partida?");
        msgConfirmacao.setContentText("A pontuação acumulada será adicionada ao seu perfil, mas você não poderá retomar a partida.");
        // Obter resposta
        Optional<ButtonType> decisao = msgConfirmacao.showAndWait();

        // Se cancelou, encerra o método
        if (decisao.isEmpty() || decisao.get() == ButtonType.CANCEL) {
            return; // encerrar método
        }

        // Mensagem de desistência
        Alert msgSaindo = new Alert(Alert.AlertType.INFORMATION);
        msgSaindo.setTitle("Desistindo da Partida");
        msgSaindo.setHeaderText("Desistindo da Partida...");
        msgSaindo.setContentText("A partida está sendo encerrada.\n\nSua pontuação acumulada será adicionada ao seu perfil.");
        msgSaindo.show();

        // Encerrar a partida
        encerrarPartida();

        // Atualizar status da partida
        this.setStatus(PartidaStatus.ABANDONADA);
        // Atualizar pontuação do aluno
        this.ALUNO.setPontuacao(this.getPontuacaoAcumulada());

        // Redirecionar para a tela de fim da partida
        try {
            App.changeScene("area-aluno/painel-aluno", "Painel do Aluno");
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            msgSaindo.close(); // fechar mensagem de salvamento
        }
    }

    /**
     * Encerra a partida após responder corretamente todas as perguntas e atingir o prêmio máximo.
     */
    public void vitoria() {
        // Atualizar status da partida
        this.setStatus(PartidaStatus.GANHA);
        // Atualizar pontuação do aluno
        this.ALUNO.setPontuacao(this.getPontuacaoAcumulada());

        // Encerrar partida em andamento
        encerrarPartida();

        // Redirecionar para a tela de fim da partida
        try {
            App.changeScene("area-aluno/partida/tela-partida-concluida", "Partida Concluída");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
