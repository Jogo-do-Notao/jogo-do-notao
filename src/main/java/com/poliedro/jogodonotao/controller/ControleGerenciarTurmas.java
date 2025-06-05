package com.poliedro.jogodonotao.controller;

import com.poliedro.jogodonotao.App;
import com.poliedro.jogodonotao.agrupadores.Turma;
import com.poliedro.jogodonotao.database.dao.TurmaDAO;
import com.poliedro.jogodonotao.usuario.Professor;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.TableCell;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.TextField;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.util.Callback;

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

    @FXML
    public void initialize() {
        // Configura as colunas
        turmaColuna.setCellValueFactory(new PropertyValueFactory<>("nome"));
        
        // Configura a coluna do professor
        professorColuna.setCellFactory(column -> new TableCell<Turma, String>() {
            @Override
            protected void updateItem(String item, boolean empty) {
                super.updateItem(item, empty);
                if (empty) {
                    setText(null);
                } else {
                    Turma turma = getTableView().getItems().get(getIndex());
                    if (turma != null) {
                        Professor prof = turma.getProfessor();
                        setText(prof != null ? prof.getNome() : "Nenhum");
                    } else {
                        setText("");
                    }
                }
            }
        });

        // Carrega as turmas
        carregarTurmas();
    }
    
    private void carregarTurmas() {
        turmas = FXCollections.observableArrayList(TurmaDAO.obterTurma());
        tabelaTurmas.setItems(turmas);
        // Atualiza a tabela para mostrar as mudanças
        tabelaTurmas.refresh();
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
