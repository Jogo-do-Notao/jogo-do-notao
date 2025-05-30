package com.poliedro.jogodonotao.controller;

import com.poliedro.jogodonotao.App;
import com.poliedro.jogodonotao.agrupadores.Turma;
import com.poliedro.jogodonotao.database.dao.AlunoDAO;
import com.poliedro.jogodonotao.database.dao.TurmaDAO;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.Alert;
import javafx.scene.control.ComboBox;
import javafx.scene.control.TextField;

import java.io.IOException;

public class ControleAdicionarAluno {

    @FXML
    private TextField campoConfirmarSenha;

    @FXML
    private TextField campoEmail;

    @FXML
    private TextField campoNome;

    @FXML
    private TextField campoRegistroMatricula;

    @FXML
    private TextField campoSenha;

    @FXML
    private ComboBox<Turma> campoTurma;

    @FXML
    void adicionarAluno(ActionEvent event) throws IOException {
        String nome = campoNome.getText();
        String ra = campoRegistroMatricula.getText();
        String senha = campoSenha.getText();
        String confirmarsenha = campoConfirmarSenha.getText();
        String email = campoEmail.getText();

        if (campoTurma.getValue() == null) {
            Alert alert = new Alert(Alert.AlertType.WARNING);
            alert.setTitle("Aviso");
            alert.setHeaderText("Selecione uma turma");
            alert.setContentText("Por favor, selecione uma turma para o aluno.");
            alert.showAndWait();
            return;
        }
        int idTurma = campoTurma.getValue().getId();
// verificar se nome ja esta sendo usado
        if (AlunoDAO.buscarPorRa(ra) != null) {
            // inválido
            Alert alert = new Alert(Alert.AlertType.WARNING);
            alert.setTitle("Erro ao cadastrar aluno");
            alert.setHeaderText("Registro de matricula já cadastrado no sistema");
            alert.setContentText("O registro de matricula digitado no campo Registro de matricula, ja esta registrado no sistema.\nPor favor digite um registro diferente");
            alert.showAndWait();
            return;
        } else {
         AlunoDAO.adicionarAluno(nome, TurmaDAO.buscarPorId(idTurma), ra, email,senha);
            App.changeScene("area-adm/gerenciar-alunos/tela-gerenciar-alunos", "Gerenciar Alunos");
        }
    }


    @FXML
    void voltarParaPainel(ActionEvent event) throws IOException{
            App.changeScene("area-adm/gerenciar-alunos/tela-gerenciar-alunos", "Gerenciar Alunos");
    }
}


