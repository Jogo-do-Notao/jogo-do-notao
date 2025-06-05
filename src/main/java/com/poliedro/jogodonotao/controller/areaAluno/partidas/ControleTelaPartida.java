package com.poliedro.jogodonotao.controller.areaAluno.partidas;

import com.poliedro.jogodonotao.jogo.Partida;
import com.poliedro.jogodonotao.pergunta.Alternativa;
import com.poliedro.jogodonotao.pergunta.Pergunta;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.*;
import javafx.scene.text.Text;

import java.net.URL;
import java.util.ResourceBundle;

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
    private Partida partida = Partida.getPartidaEmAndamento();

    /**
     * Pergunta da partida atual exibida na tela.
     */
    private Pergunta perguntaAtual;

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

    @FXML
    void desistirDaPartida(ActionEvent event) {

    }

    @FXML
    void exibirInstrucoes(ActionEvent event) {

    }

    @FXML
    void sairDaPartida(ActionEvent event) {

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
        // Sortear pergunta
        this.perguntaAtual = partida.sortearPergunta();

        // Atualizar enunciado
        //textEnunciado.setText(pergunta.getEnunciado());
        textEnunciado.setText(this.perguntaAtual.getEnunciado());

        // Deselecionar botões de alternativas
        alternativaGroup.selectToggle(null);
        // Desabilitar botão de responder (evitar bug)
        botaoResponder.setDisable(true);

        // Atualizar ajuda
        this.atualizarBotoesAjuda();

        // Aleatorizar ordem das alternativas
        this.alternativas = Alternativa.embaralhar(this.perguntaAtual.getAlternativas());

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
    private void atualizarBotoesAjuda() {
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
            // Atualizar uso das ajudas
            infosAjuda[i].setText(usosAjuda[i] + "/2");

            // Habilitar/desabilitar botões com limite ainda disponível
            botoesAjuda[i].setDisable(
                    usosAjuda[i] >= 2 // não atingiu o limite
                            || partida.getRodada() >= 15 // não for a última rodada
            );
        }
    }

    /**
     * Utiliza a ajuda de eliminar (cartas). Elimina 3 (no 1º uso) ou 2 (no 2º uso) alternativas incorretas.
     */
    @FXML
    void usarAjudaEliminar(ActionEvent event) {

        // Incrementar uso da ajuda
        partida.addAjudaEliminar();
        // Atualizar botões de ajuda
        this.atualizarBotoesAjuda();
    }

    /**
     * Utiliza a ajuda de dica.
     * Torna a dica do professor da pergunta visível na tela.
     */
    @FXML
    void usarAjudaDica(ActionEvent event) {

        // Incrementar uso da ajuda
        partida.addAjudaDica();
        // Atualizar botões de ajuda
        this.atualizarBotoesAjuda();
    }

    /**
     * Utiliza a ajuda de pular pergunta.
     * Sorteia uma nova pergunta para a rodada.
     */
    @FXML
    void usarAjudaPular(ActionEvent event) {
        // Incrementar uso da ajuda
        partida.addAjudaPular();
        // Atualizar botões de ajuda
        this.atualizarBotoesAjuda();
    }
}
