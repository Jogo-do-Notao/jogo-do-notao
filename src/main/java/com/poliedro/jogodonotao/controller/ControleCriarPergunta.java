package com.poliedro.jogodonotao.controller;

import com.poliedro.jogodonotao.App;
import com.poliedro.jogodonotao.agrupadores.Materia;
import com.poliedro.jogodonotao.database.dao.MateriaDAO;
import com.poliedro.jogodonotao.database.dao.PerguntaDAO;
import com.poliedro.jogodonotao.database.dao.ProfessorDAO;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.Alert;
import javafx.scene.control.ComboBox;
import javafx.scene.control.TextField;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.fxml.Initializable;

import java.io.IOException;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import java.util.ResourceBundle;

public class ControleCriarPergunta implements Initializable {

    @FXML
    private TextField campoAlternativa1;

    @FXML
    private TextField campoAlternativa2;

    @FXML
    private TextField campoAlternativa3;

    @FXML
    private TextField campoAlternativa4;

    @FXML
    private TextField campoAlternativa5;

    @FXML
    private TextField campoDica;

    @FXML
    private TextField campoEnunciadoPergunta;

    @FXML
    private ComboBox<String> campoMateria;
    @Override
    public void initialize(URL location, ResourceBundle resources) {
        // Exemplo: buscar as matérias do banco ou de uma lista
        ArrayList<Materia> materias = MateriaDAO.obterMaterias();
        ArrayList<String> nomesMaterias = new ArrayList<>();

        for (Materia materia : materias) {
            nomesMaterias.add(materia.getNome());
        }

        campoMateria.getItems().addAll(nomesMaterias);
    }


    @FXML
    void Descartar(ActionEvent event) throws IOException {
        App.changeScene("area-adm/gerenciar-perguntas/tela-gerenciar-perguntas", "Gerenciar Alunos");

    }

    @FXML
    void criarPergunta(ActionEvent event) throws IOException {
        String enunciado = campoEnunciadoPergunta.getText();
        String alternativa1 = campoAlternativa1.getText();
        String alternativa2 = campoAlternativa2.getText();
        String alternativa3 = campoAlternativa3.getText();
        String alternativa4 = campoAlternativa4.getText();
        String alternativa5 = campoAlternativa5.getText();
        String dica = campoDica.getText();
        String materia = campoMateria.getValue();
    // verificar se o email ja esta sendo usado
        if (PerguntaDAO.buscarPorEnunciado(enunciado) != null) {
            Alert alert = new Alert(Alert.AlertType.WARNING);
            alert.setTitle("Erro ao cadastrar Pergunta");
            alert.setHeaderText("Pergunta já cadastrada");
            alert.setContentText("O enunciado informado já existe no sistema.\nPor favor, digite uma pergunta diferente.");
            alert.showAndWait();
            return;
        } else {
            // salvar no banco de dados
            PerguntaDAO.adicionarPergunta(enunciado, alternativa1, alternativa2, alternativa3, alternativa4, alternativa5, dica, materia);
            // trocar de tela
            App.changeScene("area-adm/painel-administrador", "Gerenciar Perguntas");
        }
    }

    @FXML
    void dificil(ActionEvent event) {

    }

    @FXML
    void facil(ActionEvent event) {

    }

    @FXML
    void medio(ActionEvent event) {

    }


}
