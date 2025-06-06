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
    @FXML
    private TextField campoPesquisarAluno;

    @FXML
    private TableColumn<Aluno, String> colunaAlunos;

    @FXML
    private TableColumn<Aluno, String> colunaTurmas;

    @FXML
    private TableView<Aluno> tabelaAlunos;

    private ObservableList<Aluno> alunos;

    @FXML
    public void initialize() {
        // Configura a coluna de alunos
        colunaAlunos.setCellValueFactory(new PropertyValueFactory<>("nome"));
        
        // Configura a coluna de turmas para mostrar o nome da turma
        colunaTurmas.setCellValueFactory(cellData -> {
            Turma turma = cellData.getValue().getTurma();
            String nomeTurma = turma != null ? turma.getNome() : "Sem turma";
            return javafx.beans.binding.Bindings.createStringBinding(() -> nomeTurma);
        });

        // Carrega os alunos
        carregarAlunos();
    }


    private void carregarAlunos() {
        try {
            alunos = FXCollections.observableArrayList(AlunoDAO.obterAlunos());
            tabelaAlunos.setItems(alunos);
        } catch (Exception e) {
            System.err.println("Erro ao carregar alunos: " + e.getMessage());
            e.printStackTrace();
        }
    }

    @FXML
    void adicionarAluno(ActionEvent event) throws IOException {
        App.changeScene("area-adm/gerenciar-alunos/tela-gerenciar-alunos", "Tela Adicionar Aluno");
    }

    @FXML
    void voltarParaPainel(ActionEvent event) throws IOException {
        App.changeScene("area-adm/painel-administrador", "Painel Administrador");
    }
}
