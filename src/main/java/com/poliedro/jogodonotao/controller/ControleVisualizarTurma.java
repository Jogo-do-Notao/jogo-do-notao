package com.poliedro.jogodonotao.controller;

import com.poliedro.jogodonotao.App;
import com.poliedro.jogodonotao.agrupadores.Turma;
import com.poliedro.jogodonotao.database.dao.ProfessorDAO;
import com.poliedro.jogodonotao.database.dao.TurmaDAO;
import com.poliedro.jogodonotao.usuario.Professor;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Alert;
import javafx.scene.control.ComboBox;
import javafx.scene.control.TextField;
import javafx.scene.control.TextArea;

import java.io.IOException;
import java.net.URL;
import java.util.ArrayList;
import java.util.ResourceBundle;

public class ControleVisualizarTurma implements Initializable {

    @FXML
    private TextField campoDescricaoTurma;

    @FXML
    private TextField campoNome;

    @FXML
    private ComboBox<String> campoResponsavel;

    @FXML
    private ComboBox<String> campoSerie;

    @FXML
    private TextArea listaAluno;


    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {
        //obter professores do banco de dados
        ArrayList<Professor> professores = ProfessorDAO.obterProfessores();
        //obter apenas nome dos professores
        ArrayList<String> nomeProfessores = new ArrayList<>();
        //inserir professores no combobox
        for(Professor p: professores){
            nomeProfessores.add(p.getNome());
        }
        //Inserir todos os nomes dos professores na combobox
        campoResponsavel.getItems().addAll(nomeProfessores);

        // Obter séries das turmas do banco de dados
        ArrayList<Turma> turmas = TurmaDAO.obterTurma();
        // criar uma lista para armazenar as séries
        ArrayList<String> series = new ArrayList<>();
        //obter apenas as séries das turmas e verificar se já existe
        for (Turma t : turmas) {
            String serieStr = String.valueOf(t.getSerie());
            if (!series.contains(serieStr)) {
                series.add(serieStr);
            }
        }
        //Inserir todos os nomes das series na combobox
        campoSerie.getItems().addAll(series);
    }
    @FXML
    void adicionarAluno(ActionEvent event) {
        // implementar funcionalidade de adicionar aluno
    }

    @FXML
    void descartarAlteracao(ActionEvent event) {
        // implementar funcionalidade de descartar alteração
    }

    @FXML
    void excluirTurma(ActionEvent event) {
        // implementar funcionalidade de excluir turma
    }

    @FXML
    void salvarAlteracao(ActionEvent event) {
        // implementar funcionalidade de salvar alteração
    }

    @FXML
    void voltar(ActionEvent event) {
        // implementar funcionalidade de voltar
    }

}

