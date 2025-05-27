package com.poliedro.jogodonotao.controller;

import com.poliedro.jogodonotao.App;
import com.poliedro.jogodonotao.usuario.Professor;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Alert;
import javafx.scene.control.ButtonType;
import javafx.scene.text.Text;

import java.io.IOException;
import java.net.URL;
import java.util.Optional;
import java.util.ResourceBundle;

/**
 * Classe controladora da tela do painel do professor.
 */
public class ControlePainelAdministrador implements Initializable {

    /**
     * Texto de boas-vindas com o nome do professor/coordenador.
     */
    @FXML
    private Text textNome;
    /**
     * Texto com o e-mail institucional do professor/coordenador.
     */
    @FXML
    private Text textEmail;

    /** Método executado ao abrir o scene. */
    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {
        // Exibir dados do professor nos textos.
        textNome.setText("Bem-vindo, " + Professor.getSessaoAtiva().getNome());
        textEmail.setText("E-mail: " + Professor.getSessaoAtiva().getEmail());
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
            Professor.efetuarLogout();
        }
    }
    @FXML
    void abrirTelaAdicionarAluno(ActionEvent event) throws IOException {
        App.changeScene("area-/gerenciar-turmas/tela-gerenciar-turmas", "Gerenciar Turmas");
    }

}
