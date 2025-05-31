package com.poliedro.jogodonotao.controller.areaAluno.partidas;

import com.poliedro.jogodonotao.jogo.Partida;
import com.poliedro.jogodonotao.pergunta.Pergunta;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Alert;
import javafx.scene.control.ProgressBar;
import javafx.scene.control.ToggleGroup;
import javafx.scene.text.Text;

import java.net.URL;
import java.util.ResourceBundle;

/**
 * Controle da tela de partida do jogo.
 * Responsável por gerenciar os eventos e a interação do usuário durante uma partida.
 */
public class ControleTelaPartida implements Initializable {

    @FXML
    private ToggleGroup alternativaGroup;

    @FXML
    private ProgressBar barraProgresso;

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

    @FXML
    void alternativaSelecionada(ActionEvent event) {

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

    @FXML
    void verificarResposta(ActionEvent event) {

    }

    /**
     * Método chamado ao inicializar a tela de partida.
     */
    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {
        do {
            // Sortear pergunta
            Pergunta perguntaAtual = Partida.getPartidaEmAndamento().sortearPergunta();

            // DEBUG: exibir dados da pergunta
            Alert alert = new Alert(Alert.AlertType.INFORMATION);
            alert.setTitle("DEBUG: Pergunta Sorteada");
            alert.setHeaderText("Pergunta Sorteada");
            alert.setContentText(
                    "ID: " + perguntaAtual.getId() + "\n" +
                            "Enunciado: " + perguntaAtual.getEnunciado() + "\n" +
                            "Dificuldade: " + perguntaAtual.getDificuldade().get() + "\n" +
                            "Dica: " + perguntaAtual.getDica() + "\n" +
                            "Criador: " + perguntaAtual.getCriador().getNome() + "\n" +
                            "Alternativas: " + "\n" +
                            "1) " + perguntaAtual.getAlternativas()[0].getTexto() + "\n" +
                            "2) " + perguntaAtual.getAlternativas()[1].getTexto() + "\n" +
                            "3) " + perguntaAtual.getAlternativas()[2].getTexto() + "\n" +
                            "4) " + perguntaAtual.getAlternativas()[3].getTexto()
                            + "\n" +
                            "5) " + perguntaAtual.getAlternativas()[4].getTexto()
            );

        } while (false);
    }
}
