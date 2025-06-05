package com.poliedro.jogodonotao.controller;

import com.poliedro.jogodonotao.App;
import com.poliedro.jogodonotao.usuario.Aluno;
import javafx.animation.PauseTransition;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Alert;
import javafx.scene.control.ButtonType;
import javafx.scene.text.Text;
import javafx.util.Duration;

import java.io.IOException;
import java.net.URL;
import java.util.Optional;
import java.util.ResourceBundle;

/**
 * Classe controladora da tela do painel do aluno.
 */
public class ControlePainelAluno implements Initializable {

    /**
     * Texto de boas-vindas com o nome do aluno.
     */
    @FXML
    private Text textNome;
    /**
     * Texto com o e-mail do aluno.
     */
    @FXML
    private Text textEmail;
    /**
     * Texto com o RA do aluno.
     */
    @FXML
    private Text textRA;
    /**
     * Texto com a turma do aluno.
     */
    @FXML
    private Text textTurma;
    /**
     * Texto com a pontuação total do aluno.
     */
    @FXML
    private Text textPontuacao;

    /**
     * Método executado ao abrir o scene.
     */
    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {
        // Exibir dados do aluno nos textos.
        textNome.setText("Bem-vindo, " + Aluno.getSessaoAtiva().getNome());
        textEmail.setText("E-mail: " + Aluno.getSessaoAtiva().getEmail());
        textRA.setText("RA: " + Aluno.getSessaoAtiva().getRa());
        textTurma.setText("Turma: " + Aluno.getSessaoAtiva().getTurma().getNome());
        textPontuacao.setText(Aluno.getSessaoAtiva().getPontuacaoFormatada());
    }

    /**
     * Abre a tela de iniciar uma nova partida.
     */
    @FXML
    void iniciarNovaPartida(ActionEvent event) throws IOException {
        // Exibir mensagem
        Alert alert = new Alert(Alert.AlertType.INFORMATION);
        alert.setTitle("Carregando tela de criar partida...");
        alert.setHeaderText("Carregando tela de criar partida...");
        alert.setContentText("Por favor, aguarde enquanto a tela é carregada.");
        alert.show();

        // Espera meio segundo antes de trocar a cena e fechar o alerta
        PauseTransition pause = new PauseTransition(Duration.seconds(0.5));
        pause.setOnFinished(eventPause -> {
            try {
                App.changeScene("area-aluno/partida/tela-criar-partida", "Iniciar nova partida");
            } catch (IOException e) {
                e.printStackTrace();
            }
            alert.close();
        });
        pause.play();
    }

    /**
     * Método que realiza o logout do aluno e redireciona para a tela de login.
     */
    @FXML
    void realizarLogout(ActionEvent event) throws IOException {
        // Exibir mensagem de confirmação
        Alert alertConfirmacao = new Alert(Alert.AlertType.CONFIRMATION);
        alertConfirmacao.setTitle("Confirmar encerramento da sessão");
        alertConfirmacao.setContentText("Tem certeza de que deseja sair?");
        Optional<ButtonType> decisao = alertConfirmacao.showAndWait();

        if (decisao.isEmpty() || decisao.get() == ButtonType.CANCEL) {
            /* Se clicou em cancelar ou fechou o alert */
            return; // encerrar método
        } else if (decisao.get() == ButtonType.OK) {
            /* Se clicou em OK */
            Aluno.efetuarLogout();
        }
    }


}
