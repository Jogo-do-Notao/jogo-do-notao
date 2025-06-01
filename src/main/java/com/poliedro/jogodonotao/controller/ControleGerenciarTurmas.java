package com.poliedro.jogodonotao.controller;

import com.poliedro.jogodonotao.App;
import com.poliedro.jogodonotao.agrupadores.Turma;
import com.poliedro.jogodonotao.database.dao.TurmaDAO;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.TextField;
import javafx.scene.control.cell.PropertyValueFactory;

import java.io.IOException;

public class ControleGerenciarTurmas {

    @FXML
    private TextField campoPesquisarTurma;

    @FXML
    private TableColumn<Turma, String> professorColuna;

    @FXML
    private TableView<Turma> tabelaTurmas;

    @FXML
    private TableColumn<Turma, String> turmaColuna;

    private ObservableList<Turma> turmas;

    public void initialize() {
        turmaColuna.setCellValueFactory( new PropertyValueFactory<>("nome"));
        professorColuna.setCellValueFactory(cellData -> {
            if (cellData.getValue().getProfessor() != null) {
                return new javafx.beans.property.SimpleStringProperty(cellData.getValue().getProfessor().getNome());
            } else {
                return new javafx.beans.property.SimpleStringProperty("");
            }
        });

        turmas = FXCollections.observableArrayList(TurmaDAO.obterTurma());
        tabelaTurmas.setItems(turmas);
    }


    @FXML
    void criarTurma(ActionEvent event) throws IOException {
        App.changeScene("area-adm/gerenciar-turmas/tela-criar-turma", "Tela Criar Turma");

    }

    @FXML
    void voltarParaPainel(ActionEvent event) throws IOException {
        App.changeScene("area-adm/painel-administrador", "Painel Admnistrador");
    }

}
