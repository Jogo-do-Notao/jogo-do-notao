package com.poliedro.jogodonotao.controller;

import com.poliedro.jogodonotao.App;
import com.poliedro.jogodonotao.database.dao.ProfessorDAO;
import com.poliedro.jogodonotao.usuario.Professor;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.TextField;
import javafx.scene.control.cell.PropertyValueFactory;

import java.io.IOException;

public class ControleGerenciarProfessor {

    @FXML
    private TableColumn<Professor, String> colunaEmail;

    @FXML
    private TableColumn<Professor, String> colunaNomeProfessor;

    @FXML
    private TableColumn<Professor, String> colunaRegistro;

    @FXML
    private TextField pesquisarProfessor;

    @FXML
    private TableView<Professor> tabelaProfessores;

    private ObservableList<Professor> professores;

    @FXML
    public void initialize() {
        colunaEmail.setCellValueFactory(new PropertyValueFactory<>("email"));
        colunaNomeProfessor.setCellValueFactory(new PropertyValueFactory<>("nome"));
        colunaRegistro.setCellValueFactory(new PropertyValueFactory<>("descricao"));

        professores = FXCollections.observableArrayList(ProfessorDAO.obterProfessores());
        tabelaProfessores.setItems(professores);


    }


    @FXML
    void adicionarProfessor(ActionEvent event) throws IOException {
        App.changeScene("area-adm/gerenciar-professores/tela-adicionar-professor", "Tela Adicionar Professor");

    }

    @FXML
    void voltarParaPainel(ActionEvent event) throws IOException {
        App.changeScene("area-adm/painel-administrador", "Painel Administrador");

    }

}
