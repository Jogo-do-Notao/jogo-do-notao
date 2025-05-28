package com.poliedro.jogodonotao.controller;

import com.poliedro.jogodonotao.App;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.TextField;

import java.io.IOException;

public class ControleGerenciarAluno {
    //falta adicionar id e acoes para a tabela
    @FXML
    private TextField campoPesquisarAluno;

    @FXML
    void adicionarAluno(ActionEvent event) throws IOException {
        App.changeScene("area-adm/gerenciar-alunos/tela-gerenciar-alunos", "Tela Adicionar Aluno");
    }

    @FXML
    void voltarParaPainel(ActionEvent event) throws IOException {
        App.changeScene("area-adm/painel-administrador", "Painel Admnistrador");
    }

}
