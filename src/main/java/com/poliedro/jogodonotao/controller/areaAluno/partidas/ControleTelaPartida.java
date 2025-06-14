package com.poliedro.jogodonotao.controller.areaAluno.partidas;

import com.poliedro.jogodonotao.App;
import com.poliedro.jogodonotao.jogo.Partida;
import com.poliedro.jogodonotao.pergunta.Alternativa;
import com.poliedro.jogodonotao.pergunta.Pergunta;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.*;
import javafx.scene.image.Image;
import javafx.scene.image.ImageView;
import javafx.scene.layout.HBox;
import javafx.scene.text.Text;

import java.net.URL;
import java.util.*;

/**
 * Controle da tela de partida do jogo.
 * Responsável por gerenciar os eventos e a interação do usuário durante uma partida.
 */
public class ControleTelaPartida implements Initializable {
    // Componentes FXML
    @FXML
    private ToggleButton alternativa1;

    @FXML
    private Text alternativa1texto;

    @FXML
    private ToggleButton alternativa2;

    @FXML
    private Text alternativa2texto;

    @FXML
    private ToggleButton alternativa3;

    @FXML
    private Text alternativa3texto;

    @FXML
    private ToggleButton alternativa4;

    @FXML
    private Text alternativa4texto;

    @FXML
    private ToggleButton alternativa5;

    @FXML
    private Text alternativa5texto;

    @FXML
    private ToggleGroup alternativaGroup;

    @FXML
    private ProgressBar barraProgresso;

    @FXML
    private Button botaoAjudaDica;

    @FXML
    private Button botaoAjudaEliminar;

    @FXML
    private Button botaoAjudaPular;

    @FXML
    private Button botaoResponder;

    @FXML
    private HBox dicaContainer;

    @FXML
    private Text dicaText;

    @FXML
    private Text textEnunciado;

    @FXML
    private Text textMateria;

    @FXML
    private Text textPontuacaoAcumulada;

    @FXML
    private Text textPontuacaoCheckpoint;

    @FXML
    private Text textProgresso;

    @FXML
    private Text usoAjudaDica;

    @FXML
    private Text usoAjudaEliminar;

    @FXML
    private Text usoAjudaPular;

    // Atributos

    /**
     * Partida em andamento.
     */
    private final Partida partida = Partida.getPartidaEmAndamento();

    /**
     * Alternativas exibidas na tela.
     */
    private Alternativa[] alternativas;

    /**
     * Método chamado quando uma alternativa é selecionada ou desmarcada.
     */
    @FXML
    void alternativaSelecionada(ActionEvent event) {
        // Habilitar/desabilitar o botão de verificar resposta
        botaoResponder.setDisable(
                alternativaGroup.getSelectedToggle() == null
        );
    }

    /**
     * Abandona a partida atual, mudando seu status e adicionando a pontuação acumulada ao aluno.
     */
    @FXML
    void desistirDaPartida(ActionEvent event) {
        // Abandonar partida
        partida.abandonar();
    }

    /**
     * Exibe as instruções do jogo.
     */
    @FXML
    void exibirInstrucoes(ActionEvent event) {
        // Ícone do jogo
        Image icon = new Image( // Carregar png dos recursos
                Objects.requireNonNull(App.class.getResourceAsStream
                        ("/com/poliedro/jogodonotao/images/logo-poliedro/poliedro-favicon.png")));
        ImageView iconView = new ImageView(icon);
        iconView.setFitHeight(48);
        iconView.setFitWidth(48);

        // Exibir mensagem
        Alert instrucoes = new Alert(Alert.AlertType.INFORMATION);
        instrucoes.setGraphic(iconView); // Definir ícone
        instrucoes.setTitle("Instruções do Jogo");
        instrucoes.setHeaderText("Como Jogar o Jogo do Notão");
        // Texto das instruções
        instrucoes.setContentText(
                "Bem-vindo ao Jogo do Notão!\n\n" +
                        "OBJETIVO\n" +
                        "Seu objetivo é responder corretamente a 15 perguntas de conhecimento para acumular a pontuação máxima.\n\n" +
                        "COMO JOGAR\n" +
                        "• A partida tem 15 rodadas com dificuldade progressiva.\n" +
                        "• Em cada rodada, escolha a alternativa que julgar correta.\n" +
                        "• Acertando: você acumula os pontos da rodada e avança.\n" +
                        "• Errando: o jogo termina e você garante apenas os pontos salvos no último checkpoint.\n\n" +
                        "AJUDAS\n" +
                        "Para os momentos de dúvida, você pode usar 3 tipos de ajuda (até 2 vezes cada):\n" +
                        "\t\t• Eliminar Alternativas: Remove duas opções incorretas.\n" +
                        "\t\t• Dica do Professor: Exibe uma informação extra sobre a pergunta.\n" +
                        "\t\t• Pular Pergunta: Substitui a pergunta atual por outra de mesma dificuldade.\n" +
                        "*Atenção: Usar uma ajuda descontará pontos do seu placar.*\n\n" +
                        "OPÇÕES DA PARTIDA\n" +
                        "• Parar e Levar: A qualquer momento, você pode encerrar o jogo e sair com todos os pontos acumulados até então.\n" +
                        "• Sair e Salvar: Precisa de uma pausa? Saia do jogo e seu progresso será salvo para você continuar depois.\n\n" +
                        "Mostre seu conhecimento e boa sorte!"
        );
        instrucoes.showAndWait();
    }

    @FXML
    void sairDaPartida(ActionEvent event) {
        // Exibir mensagem de confirmacao
        Alert msgConfir = new Alert(Alert.AlertType.CONFIRMATION);
        msgConfir.setTitle("Sair da Partida");
        msgConfir.setHeaderText("Você tem certeza que deseja sair da partida?");
        msgConfir.setContentText("Seu progresso atual será salvo e você poderá retomar a partida mais tarde.");
        // Obter resposta
        Optional<ButtonType> decisao = msgConfir.showAndWait();

        // Se cancelou, encerra o método
        if (decisao.isEmpty() || decisao.get() == ButtonType.CANCEL) {
            return; // encerrar método
        }

        // Salvar e sair da partida
        partida.sairPartida();
    }

    /**
     * Array com os botões de alternativas.
     */
    private ToggleButton[] botoesAlternativas;

    /**
     * Verifica se a resposta selecionada está correta.
     * <ul>
     * <li> Se estiver correta, exibe mensagem de resposta correta, atualiza a pontuação e avança para a próxima rodada (ou finaliza se for a última).
     * <li> Se estiver incorreta, exibe mensagem de resposta incorreta e finaliza a partida.
     * </ul>
     */
    @FXML
    void verificarResposta(ActionEvent event) {
        // Obter alternativa selecionada
        Alternativa alternativaSelecionada = null;
        Alternativa alternativaCorreta = null;
        for (int i = 0; i < 5; i++) {
            if (botoesAlternativas[i].isSelected()) { // buscar alternativa selecionada
                alternativaSelecionada = alternativas[i];
            }
            if (alternativas[i].isCorreta()) { // buscar alternativa correta
                alternativaCorreta = alternativas[i];
            }
        }
        // Verificar respostas e prosseguir com a partida
        if (alternativaSelecionada != null && alternativaCorreta != null) {
            if (
                    partida.verificarResposta(alternativaSelecionada, alternativaCorreta)
            ) {
                /* Correto */
                // atualizar informações na tela
                this.atualizarInfo();

                // Verificar se terminou
                if (partida.getRodada() <= 15) {
                    // Próxima pergunta
                    this.atualizarRodada();
                } else {
                    /* Partida finalizada */
                    // Exibir mensagem de vitória
                    Alert alert = new Alert(Alert.AlertType.INFORMATION);
                    alert.setTitle("Parabéns!");
                    alert.setHeaderText("Você completou a partida!");
                    alert.setContentText("Sua pontuação final é: " + partida.getPontuacaoAcumuladaFormatada());
                    alert.showAndWait();

                    // Encerrar partida
                    partida.vitoria();
                }

            } else {
                /* Incorreto */
                // Finalizar partida
                partida.derrota();
            }

        }
    }

    /**
     * Método chamado ao inicializar a tela de partida.
     */
    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {
        // Iniciar array com os botões de alternativas
        this.botoesAlternativas = new ToggleButton[]{
                alternativa1, alternativa2, alternativa3, alternativa4, alternativa5
        };

        // Exibir matéria
        textMateria.setText(
                "Matéria: " + (
                        partida.getMATERIA() == null ?
                                "Todas as Matérias" :
                                partida.getMATERIA().getNome()
                ));
        // Exibir pontuação
        this.atualizarInfo();

        // Sortear e exibir pergunta
        this.atualizarRodada();
    }

    /**
     * Atualiza as informações da partida na tela.
     */
    private void atualizarInfo() {
        // atualizar pontuação
        textPontuacaoAcumulada.setText("Pontuação Acumulada: " + partida.getPontuacaoAcumuladaFormatada());
        textPontuacaoCheckpoint.setText("Pontuação do Checkpoint: " + partida.getPontuacaoCheckpointFormatada());

        // atualizar progresso
        int rodada = partida.getRodada();
        textProgresso.setText((rodada <= 15 ? rodada : "Concluído") + "/15");
        barraProgresso.setProgress( // barra de progresso
                (rodada / 16.0));
    }

    /**
     * Atualiza a pergunta na tela.
     */
    private void atualizarRodada() {
        // Ocultar dica caso esteja visível
        dicaContainer.setVisible(false);
        // Habilitar alternativas caso estejam desabilitadas
        for (ToggleButton alternativa : botoesAlternativas) {
            alternativa.setDisable(false);
        }

        this.atualizarPergunta(); // atualizar pergunta
        this.atualizarBotoesAjuda(); // atualizar botões de ajuda
    }

    /**
     * Atualiza a pergunta na tela.
     */
    private void atualizarPergunta() {
        // Sortear pergunta
        Pergunta perguntaAtual = partida.sortearPergunta();

        // Atualizar enunciado
        textEnunciado.setText(perguntaAtual.getEnunciado());

        // Desmarcar botões de alternativas
        alternativaGroup.selectToggle(null);
        // Desabilitar botão de responder (evitar bug)
        botaoResponder.setDisable(true);

        // Aleatorizar ordem das alternativas
        this.alternativas = Alternativa.embaralhar(perguntaAtual.getAlternativas());
        // Exibir alternativas
        Text[] textos = {alternativa1texto, alternativa2texto, alternativa3texto, alternativa4texto, alternativa5texto};
        for (int i = 0; i < 5; i++) {
            textos[i].setText(this.alternativas[i].getTexto());
        }
    }

    // Ajudas

    /**
     * Atualiza os botões de ajuda caso ainda haja limite disponível na partida.
     * <p>
     * Desabilita os botões de ajuda na última rodada (15º) ou se o limite tiver sido atingido.
     */
    private void atualizarBotoesAjuda(boolean usoNaRodada) {
        // Obter usos das ajudas
        int[] usosAjuda = {
                partida.getAjudaEliminar(),
                partida.getAjudaDica(),
                partida.getAjudaPular()
        };
        // Elementos da tela
        Text[] infosAjuda = {usoAjudaEliminar, usoAjudaDica, usoAjudaPular};
        Button[] botoesAjuda = {botaoAjudaEliminar, botaoAjudaDica, botaoAjudaPular};

        for (int i = 0; i < 3; i++) {
            // Atualizar texto com uso das ajudas
            infosAjuda[i].setText(usosAjuda[i] + "/2");

            // Habilitar/desabilitar botões com limite ainda disponível
            botoesAjuda[i].setDisable(
                    usosAjuda[i] >= 2 // não atingiu o limite
                            || partida.getRodada() >= 15 || // não for a última rodada
                            usoNaRodada // se uma ajuda já foi usada nesta rodada
            );
        }
    }

    /**
     * Chama o método {@code atualizarBotoesAjuda(boolean usoNaRodada)} quando o chamado não for um chamado na rodada atual.
     */
    private void atualizarBotoesAjuda() {
        this.atualizarBotoesAjuda(false);
    }

    /**
     * Utiliza a ajuda de eliminar (cartas). Elimina 3 (no 1º uso) ou 2 (no 2º uso) alternativas incorretas.
     */
    @FXML
    void usarAjudaEliminar(ActionEvent event) {
        // Verificar se usuário tem pontos suficientes para usar a ajuda
        if (partida.getPontuacaoAcumulada() < partida.getPrecoAjudaEliminar()) {
            this.exibirMsgPontosInsuficienteAjuda(
                    partida.getPrecoAjudaEliminarFormatado()
            ); // exibir mensagem de pontos insuficientes
            return; // encerrar método
        }

        // Quantidade de alternativas a eliminar
        // 1º uso: 3 alternativas | 2º uso: 2 alternativas
        int quantEliminar = partida.getAjudaEliminar() == 0 ? 3 : 2;

        // Mensagem de confirmação
        Alert msgConfirmacao = new Alert(Alert.AlertType.CONFIRMATION);
        msgConfirmacao.setTitle("Usar Ajuda Cartas");
        msgConfirmacao.setHeaderText("Você tem certeza que deseja usar essa ajuda?");
        msgConfirmacao.setContentText(
                "Essa ajuda eliminará " + quantEliminar + " alternativas incorretas.\n\n" +
                        "O preço da ajuda é de " + partida.getPrecoAjudaEliminarFormatado() + " do seu prêmio atual.\n\n"
        );
        // Obter resposta
        Optional<ButtonType> decisao = msgConfirmacao.showAndWait();

        // Se cancelou, encerra o método
        if (decisao.isEmpty() || decisao.get() == ButtonType.CANCEL) {
            /* Negou uso da ajuda */
            return; // encerrar método
        }

        /* Eliminar alternativas */
        // Mensagem de eliminando alternativas
        Alert msgEliminar = new Alert(Alert.AlertType.INFORMATION);
        msgEliminar.setTitle("Eliminando Alternativas");
        msgEliminar.setHeaderText("Eliminando alternativas...");
        msgEliminar.setContentText("Aguarde enquanto as alternativas são eliminadas...");
        msgEliminar.show();
        // Identificar índices das alternativas incorretas
        List<Integer> incorretas = new ArrayList<>();
        for (int i = 0; i < alternativas.length; i++) {
            if (!alternativas[i].isCorreta()) {
                incorretas.add(i); // adicionar índice da alternativa incorreta
            }
        }
        // Embaralhar índices
        Collections.shuffle(incorretas);
        // Escolher 2 ou 3 para eliminar
        for (int i = 0; (i < quantEliminar && i < incorretas.size()); i++) {
            int idx = incorretas.get(i); // obter índice da alternativa
            botoesAlternativas[idx].setDisable(true); // desabilitar botão
        }
        msgEliminar.close(); // fechar mensagem de eliminação

        /* finalizar uso da ajuda */
        partida.usoAjudaEliminar(); // Incrementar uso da ajuda
        this.atualizarInfo(); // atualizar pontuação
        this.atualizarBotoesAjuda(true); // Atualizar botões de ajuda
        botaoAjudaEliminar.setDisable(true); // desabilitar botão até próxima rodada
    }

    /**
     * Utiliza a ajuda de dica.
     * Torna a dica do professor da pergunta visível na tela.
     */
    @FXML
    void usarAjudaDica(ActionEvent event) {
        // Verificar se usuário tem pontos suficientes para usar a ajuda
        if (partida.getPontuacaoAcumulada() < partida.getPrecoAjudaDica()) {
            this.exibirMsgPontosInsuficienteAjuda(
                    partida.getPrecoAjudaDicaFormatado()
            ); // exibir mensagem de pontos insuficientes
            return; // encerrar método
        }

        // Mensagem de confirmação
        Alert msgConfirmacao = new Alert(Alert.AlertType.CONFIRMATION);
        msgConfirmacao.setTitle("Usar Ajuda Dica do Professor");
        msgConfirmacao.setHeaderText("Você tem certeza que deseja usar essa ajuda?");
        msgConfirmacao.setContentText(
                "Essa ajuda irá exibir a ajuda do professor na tela.\n\n" +
                        "O preço da ajuda é de " + partida.getPrecoAjudaDicaFormatado() + " do seu prêmio atual.\n\n"
        );
        // Obter resposta
        Optional<ButtonType> decisao = msgConfirmacao.showAndWait();

        // Se cancelou, encerra o método
        if (decisao.isEmpty() || decisao.get() == ButtonType.CANCEL) {
            /* Negou uso da ajuda */
            return; // encerrar método
        }

        /* tornar dica da pergunta visível */
        // Mensagem de obtendo dica
        Alert msgDica = new Alert(Alert.AlertType.INFORMATION);
        msgDica.setTitle("Obtendo Dica do Professor");
        msgDica.setHeaderText("Obtendo dica do professor...");
        msgDica.setContentText("Aguarde enquanto a dica é carregada...");
        msgDica.show();
        // Exibir dica do professor
        dicaText.setText("Dica do Professor: " + partida.getPerguntaAtual().getDica());
        dicaContainer.setVisible(true); // Exibir dica
        msgDica.close();

        /* finalizar uso da ajuda */
        partida.addAjudaDica(); // Incrementar uso da ajuda
        this.atualizarInfo(); // atualizar pontuação
        this.atualizarBotoesAjuda(true); // Atualizar botões de ajuda
        botaoAjudaDica.setDisable(true); // desabilitar botão até próxima rodada
    }

    /**
     * Utiliza a ajuda de pular pergunta.
     * Sorteia uma nova pergunta para a rodada.
     */
    @FXML
    void usarAjudaPular(ActionEvent event) {
        // Verificar se usuário tem pontos suficientes para usar a ajuda
        if (partida.getPontuacaoAcumulada() < partida.getPrecoAjudaPular()) {
            this.exibirMsgPontosInsuficienteAjuda(
                    partida.getPrecoAjudaPularFormatado()
            ); // exibir mensagem de pontos insuficientes
            return; // encerrar método
        }

        // Mensagem de confirmação
        Alert msgConfirmacao = new Alert(Alert.AlertType.CONFIRMATION);
        msgConfirmacao.setTitle("Usar Ajuda Pular Pergunta");
        msgConfirmacao.setHeaderText("Você tem certeza que deseja usar essa ajuda?");
        msgConfirmacao.setContentText(
                "Essa ajuda irá substituir a pergunta atual e sortear outra pergunta.\n\n" +
                        "O preço da ajuda é de " + partida.getPrecoAjudaPularFormatado() + " do seu prêmio atual.\n\n"
        );
        // Obter resposta
        Optional<ButtonType> decisao = msgConfirmacao.showAndWait();

        // Se cancelou, encerra o método
        if (decisao.isEmpty() || decisao.get() == ButtonType.CANCEL) {
            /* Negou uso da ajuda */
            return; // encerrar método
        }

        /* Pular pergunta */
        // Mensagem de pulando pergunta
        Alert msgPular = new Alert(Alert.AlertType.INFORMATION);
        msgPular.setTitle("Sorteando Nova Pergunta");
        msgPular.setHeaderText("Sorteando Nova Pergunta...");
        msgPular.setContentText("Aguarde enquanto a nova pergunta é carregada...");
        msgPular.show();
        // Sortear nova pergunta
        this.atualizarPergunta();
        msgPular.close();

        /* finalizar uso da ajuda */
        partida.addAjudaPular(); // Incrementar uso da ajuda
        this.atualizarInfo(); // atualizar pontuação
        this.atualizarBotoesAjuda(true); // Atualizar botões de ajuda
        botaoAjudaPular.setDisable(true); // desabilitar botão até próxima rodada
    }

    /**
     * Exibe a mensagem de pontuação insuficiente para usar uma ajuda.
     */
    private void exibirMsgPontosInsuficienteAjuda(
            String precoAjudaFormatado
    ) {
        Alert msgNegacao = new Alert(Alert.AlertType.WARNING);
        msgNegacao.setTitle("Pontos Insuficientes");
        msgNegacao.setHeaderText("Você não tem pontos suficientes para usar essa ajuda.");
        msgNegacao.setContentText(
                "Para usar essa ajuda, é necessário pagar " + precoAjudaFormatado + " do seu prêmio atual.\n" +
                        "Seu prêmio atual é de " + partida.getPontuacaoAcumuladaFormatada() + "."
        );
        msgNegacao.showAndWait();
    }
}
