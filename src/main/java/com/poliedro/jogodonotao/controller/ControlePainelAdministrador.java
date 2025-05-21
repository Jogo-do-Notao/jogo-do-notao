package com.poliedro.jogodonotao.controller;

import com.poliedro.jogodonotao.usuario.Professor;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.Alert;
import javafx.scene.control.ButtonType;

import java.io.IOException;
import java.util.Optional;

/**
 * Classe controladora da tela do painel do professor.
 */
public class ControlePainelAdministrador {

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

}
