
package com.poliedro.jogodonotao.controller;

import com.poliedro.jogodonotao.App;
import com.poliedro.jogodonotao.agrupadores.Materia;
import com.poliedro.jogodonotao.database.dao.MateriaDAO;
import com.poliedro.jogodonotao.database.dao.PerguntaDAO;
import com.poliedro.jogodonotao.database.dao.ProfessorDAO;
import com.poliedro.jogodonotao.usuario.Professor;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.Alert;
import javafx.scene.control.ComboBox;
import javafx.scene.control.TextField;
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

    private String dificuldadeSelecionada = null;
    private String emailProfessor; // Novo campo

    // Método para receber o e-mail do professor logado
    public void setEmailProfessor(String email) {
        this.emailProfessor = email;
    }

    @Override
    public void initialize(URL location, ResourceBundle resources) {
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

        int materiaId = 0;
        switch (materia) {
            case "Língua Portuguesa": materiaId = 1; break;
            case "Matemática": materiaId = 2; break;
            case "História": materiaId = 6; break;
            case "Geografia": materiaId = 7; break;
            case "Ciências(Fundamental)": materiaId = 13; break;
            case "Inglês": materiaId = 10; break;
            case "Arte": materiaId = 12; break;
            case "Física": materiaId = 4; break;
            case "Química": materiaId = 5; break;
            case "Biologia": materiaId = 3; break;
            case "Sociologia": materiaId = 9; break;
            case "Filosofia": materiaId = 8; break;
            case "Espanhol": materiaId = 11; break;
            default: materiaId = 0;
        }

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
            if (emailProfessor == null || emailProfessor.isEmpty()) {
                throw new RuntimeException("E-mail do professor não informado.");
            }
            Professor professor = ProfessorDAO.buscarPorEmail(emailProfessor);
            if (professor == null) {
                throw new RuntimeException("Professor não encontrado: " + emailProfessor);
            }
            int idCriador = professor.getId();

            int perguntaId = PerguntaDAO.adicionarPergunta(enunciado, dica, materiaId, dificuldadeSelecionada, idCriador);

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