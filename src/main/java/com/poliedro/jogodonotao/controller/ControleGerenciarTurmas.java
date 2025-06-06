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
        // Configura a coluna de turma
        turmaColuna.setCellValueFactory(cellData -> 
            javafx.beans.binding.Bindings.createStringBinding(
                () -> cellData.getValue() != null ? cellData.getValue().getNome() : ""
            )
        );
        
        // Configura a coluna do professor
        professorColuna.setCellValueFactory(cellData -> 
            javafx.beans.binding.Bindings.createStringBinding(
                () -> {
                    if (cellData.getValue() == null) return "";
                    Professor prof = cellData.getValue().getProfessor();
                    return prof != null ? prof.getNome() : "Sem professor";
                }
            )
        );

        // Carrega as turmas
        carregarTurmas();
    }
    
    private void carregarTurmas() {
        try {
            turmas = FXCollections.observableArrayList(TurmaDAO.obterTurma());
            tabelaTurmas.setItems(turmas);
            tabelaTurmas.refresh();
        } catch (Exception e) {
            System.err.println("Erro ao carregar turmas: " + e.getMessage());
            e.printStackTrace();
        }
    }

    @FXML
    void criarTurma(ActionEvent event) throws IOException {
        App.changeScene("area-adm/gerenciar-turmas/tela-criar-turma", "Tela Criar Turma");
    }

    @FXML
    void voltarParaPainel(ActionEvent event) throws IOException {
        App.changeScene("area-adm/painel-administrador", "Painel Administrador");
    }
}
