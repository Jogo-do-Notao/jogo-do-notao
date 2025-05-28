package com.poliedro.jogodonotao.controller;

import com.poliedro.jogodonotao.App;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.TextField;

import java.io.IOException;

public class ControleGerenciarProfessor {

    @FXML
    private TextField pesquisarProfessor;

    @FXML
    void adicionarProfessor(ActionEvent event) throws IOException {
        App.changeScene("area-adm/gerenciar-professor/tela-cadastrar-professor", "Tela Criar Pergunta");
    }

    @FXML
    void voltarParaPainel(ActionEvent event) throws IOException {
        App.changeScene("area-adm/painel-administrador", "Painel Admnistrador");
    }

}
