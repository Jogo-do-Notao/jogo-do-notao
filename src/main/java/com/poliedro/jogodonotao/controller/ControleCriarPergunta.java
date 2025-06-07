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

    private String dificuldadeSelecionada = null;

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
        String dica = campoDica.getText();
        String materia = campoMateria.getValue();

        if (dificuldadeSelecionada == null) {
            Alert alert = new Alert(Alert.AlertType.WARNING);
            alert.setTitle("Erro ao cadastrar Pergunta");
            alert.setHeaderText("Dificuldade não selecionada");
            alert.setContentText("Por favor, selecione a dificuldade da pergunta.");
            alert.showAndWait();
            return;
        }

        if (PerguntaDAO.buscarPorEnunciado(enunciado) != null) {
            Alert alert = new Alert(Alert.AlertType.WARNING);
            alert.setTitle("Erro ao cadastrar Pergunta");
            alert.setHeaderText("Pergunta já cadastrada");
            alert.setContentText("O enunciado informado já existe no sistema.\nPor favor, digite uma pergunta diferente.");
            alert.showAndWait();
            return;
        } else {
            // Salva a pergunta e obtém o ID gerado, agora incluindo a dificuldade
            int perguntaId = PerguntaDAO.adicionarPergunta(enunciado, dica, materia, dificuldadeSelecionada);

            List<String> alternativas = List.of(
                    campoAlternativa1.getText(),
                    campoAlternativa2.getText(),
                    campoAlternativa3.getText(),
                    campoAlternativa4.getText(),
                    campoAlternativa5.getText()
            );

            for (int i = 0; i < alternativas.size(); i++) {
                int correta = (i == 0) ? 1 : 0;
                PerguntaDAO.adicionarAlternativa(perguntaId, alternativas.get(i), correta);
            }

            App.changeScene("area-adm/painel-administrador", "Gerenciar Perguntas");
        }
    }

    @FXML
    void facil(ActionEvent event) {
        dificuldadeSelecionada = "Fácil";
    }

    @FXML
    void medio(ActionEvent event) {
        dificuldadeSelecionada = "Médio";
    }

    @FXML
    void dificil(ActionEvent event) {
        dificuldadeSelecionada = "Difícil";
    }

}
