package com.poliedro.jogodonotao.controller;

import com.poliedro.jogodonotao.App;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.TextField;

import java.io.IOException;

public class ControleGerenciarPerguntas {

    @FXML
    private TextField campoPesquisarPergunta;

    @FXML
    void criarPergunta(ActionEvent event) throws IOException {
        App.changeScene("area-adm/gerenciar-perguntas/tela-criar-pergunta", "Tela Criar Pergunta");
    }

    @FXML
    void voltarParaPainel(ActionEvent event) throws IOException {
        App.changeScene("area-adm/painel-administrador", "Painel Admnistrador");

    }

}
