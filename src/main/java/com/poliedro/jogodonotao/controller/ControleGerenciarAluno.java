package com.poliedro.jogodonotao.controller;

import com.poliedro.jogodonotao.App;
import com.poliedro.jogodonotao.agrupadores.Turma;
import com.poliedro.jogodonotao.database.dao.AlunoDAO;
import com.poliedro.jogodonotao.usuario.Aluno;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.TextField;
import javafx.scene.control.cell.PropertyValueFactory;

import java.io.IOException;

public class ControleGerenciarAluno {
    //falta adicionar id e acoes para a tabela
    @FXML
    private TextField campoPesquisarAluno;

    @FXML
    private TableColumn<Aluno, String> colunaAlunos;

    @FXML
    private TableColumn<Aluno, Turma> colunaTurmas;

    @FXML
    private TableView<Aluno> tabelaAlunos;

    @FXML
    private ObservableList<Aluno> alunos;

    @FXML
    public void initialize() {
        colunaAlunos.setCellValueFactory(new PropertyValueFactory<>("nome"));
        colunaTurmas.setCellValueFactory(new PropertyValueFactory<>("turma"));

        alunos = FXCollections.observableArrayList(AlunoDAO.obterAlunos());
        tabelaAlunos.setItems(alunos);



    }









    @FXML
    void adicionarAluno(ActionEvent event) throws IOException {
        App.changeScene("area-adm/gerenciar-alunos/tela-gerenciar-alunos", "Tela Adicionar Aluno");
    }

    @FXML
    void voltarParaPainel(ActionEvent event) throws IOException {
        App.changeScene("area-adm/painel-administrador", "Painel Admnistrador");
    }

}
