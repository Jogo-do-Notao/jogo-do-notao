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
    private Text usoAjudaCartas;

    @FXML
    private Text usoAjudaDica;

    @FXML
    private Text usoAjudaPular;

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

    @FXML
    void usarAjudaCartas(ActionEvent event) {

    }

    @FXML
    void usarAjudaDica(ActionEvent event) {

    }

    @FXML
    void usarAjudaPular(ActionEvent event) {

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
                    Partida.getPartidaEmAndamento().verificarResposta(alternativaSelecionada, alternativaCorreta)
            ) {
                // Próxima pergunta
            } else {
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
                "Matéria: " + Partida.getPartidaEmAndamento().getMateria().getNome());

        // Sortear pergunta
        Pergunta perguntaAtual = Partida.getPartidaEmAndamento().sortearPergunta();
        // Exibir pergunta na tela
        atualizarPergunta(perguntaAtual);
    }

    /**
     * Atualiza a pergunta na tela.
     */
    private void atualizarPergunta(Pergunta pergunta) {
        // Atualizar enunciado
        //textEnunciado.setText(pergunta.getEnunciado());
        textEnunciado.setText(pergunta.getEnunciado());

        // Aleatorizar ordem das alternativas
        this.alternativas = Alternativa.embaralhar(pergunta.getAlternativas());

        // Exibir alternativas
        Text[] textos = {alternativa1texto, alternativa2texto, alternativa3texto, alternativa4texto, alternativa5texto};
        for (int i = 0; i < 5; i++) {
            textos[i].setText(this.alternativas[i].getTexto());
        }

    }
}
