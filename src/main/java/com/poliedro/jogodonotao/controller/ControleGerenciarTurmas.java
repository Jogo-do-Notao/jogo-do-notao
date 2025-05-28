package com.poliedro.jogodonotao.controller;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.TextField;

public class ControleGerenciarTurmas {

    @FXML
    private TextField campoPesquisarTurma;

    @FXML
    void criarTurma(ActionEvent event) {
        App.changeScene("area-adm/gerenciar-turmas/tela-criar-turma", "Tela Criar Turma");

    }

    @FXML
    void voltarParaPainel(ActionEvent event) {
        App.changeScene("area-adm/painel-administrador", "Painel Admnistrador");
    }

}
