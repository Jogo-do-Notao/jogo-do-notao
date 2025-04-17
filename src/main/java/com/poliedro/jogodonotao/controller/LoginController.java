package com.poliedro.jogodonotao.controller;

import javafx.fxml.FXML;
import javafx.scene.input.MouseEvent;

import javax.swing.*;

public class LoginController {

    @FXML
    void exibirMensagem(MouseEvent event) {
        JOptionPane.showMessageDialog(null, "Bem-vindo ao jogo!");
    }

}
