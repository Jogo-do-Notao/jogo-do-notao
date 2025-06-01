package com.poliedro.jogodonotao.controller;

import com.poliedro.jogodonotao.App;
import com.poliedro.jogodonotao.database.dao.AlunoDAO;
import com.poliedro.jogodonotao.database.dao.ProfessorDAO;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.Alert;
import javafx.scene.control.TextField;

import java.io.IOException;

public class ControleCadastarProfessor {

    @FXML
    private TextField campoConfirmarSenha;

    @FXML
    private TextField campoDescricao;

    @FXML
    private TextField campoEmail;

    @FXML
    private TextField campoNome;

    @FXML
    private TextField campoSenha;

    @FXML
    void adicionarProfessor(ActionEvent event) throws IOException {
        String nome = campoNome.getText();
        String descricao = campoDescricao.getText();
        String senha = campoSenha.getText();
        String confirmarsenha = campoConfirmarSenha.getText();
        String email = campoEmail.getText();
// verificar se o email ja esta sendo usado
        if (ProfessorDAO.buscarPorEmail(email) != null) {
            // inválido
            Alert alert = new Alert(Alert.AlertType.WARNING);
            alert.setTitle("Erro ao cadastrar Professor");
            alert.setHeaderText("E-mail já cadastrado no sistema");
            alert.setContentText("O E-mail digitado no campo E-mail, ja esta registrado no sistema.\nPor favor digite um e-mail diferente");
            alert.showAndWait();
            return;
        }else {
            //salvar no banco de dados
            ProfessorDAO.adicionarProfessor(nome, descricao, email, senha);
            //trocar de tela
            App.changeScene("area-adm/painel-administrador", "Gerenciar Alunos");//temporario
        }
    }

    @FXML
    void voltarParaPainel(ActionEvent event) throws IOException {
        App.changeScene("area-adm/painel-administrador", "Gerenciar Alunos");//temporario
    }

}