package com.poliedro.jogodonotao.controller;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.TextField;

public class ControleGerenciarPerguntas {

    @FXML
    private TextField campoPesquisarPergunta;

    @FXML
    void criarPergunta(ActionEvent event) {
        App.changeScene("area-adm/gerenciar-perguntas/tela-criar-pergunta", "Tela Criar Pergunta");
    }

    @FXML
    void voltarParaPainel(ActionEvent event) {
        App.changeScene("area-adm/painel-administrador", "Painel Admnistrador");

    }

}
