package com.poliedro.jogodonotao.controller;

import com.poliedro.jogodonotao.App;
import com.poliedro.jogodonotao.database.dao.PerguntaDAO;
import com.poliedro.jogodonotao.pergunta.Pergunta;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.TextField;
import javafx.scene.control.cell.PropertyValueFactory;

import java.io.IOException;
import java.sql.SQLException;

import static com.poliedro.jogodonotao.database.dao.PerguntaDAO.obterPerguntas;

public class ControleGerenciarPerguntas {

    @FXML
    private TextField campoPesquisarPergunta;

    @FXML
    private TableColumn<Pergunta, String> criadoPorColuna;

    @FXML
    private TableColumn<Pergunta, String> dificuldadeColuna;

    @FXML
    private TableColumn<Pergunta, String> editadoPorColuna;

    @FXML
    private TableColumn<Pergunta, Integer> idColuna;

    @FXML
    private TableColumn<Pergunta, String> materiaColuna;

    @FXML
    private TableColumn<Pergunta, String> perguntaColuna;

    @FXML
    private TableView<Pergunta> tabelaPerguntas;

    private ObservableList<Pergunta> perguntas;








    @FXML
    void criarPergunta(ActionEvent event) throws IOException {
        App.changeScene("area-adm/gerenciar-perguntas/tela-criar-pergunta", "Tela Criar Pergunta");
    }

    @FXML
    void voltarParaPainel(ActionEvent event) throws IOException {
        App.changeScene("area-adm/painel-administrador", "Painel Admnistrador");

    }
}
