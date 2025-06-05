package com.poliedro.jogodonotao.controller;

import com.poliedro.jogodonotao.App;
import com.poliedro.jogodonotao.database.dao.PerguntaDAO;
import com.poliedro.jogodonotao.pergunta.DificuldadePergunta;
import com.poliedro.jogodonotao.pergunta.Pergunta;
import com.poliedro.jogodonotao.usuario.Professor;
import javafx.beans.property.SimpleIntegerProperty;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.*;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.beans.property.SimpleObjectProperty;
import javafx.beans.property.SimpleStringProperty;

import java.io.IOException;
import java.sql.SQLException;

import static com.poliedro.jogodonotao.database.dao.PerguntaDAO.obterPerguntas;

public class ControleGerenciarPerguntas {

    @FXML
    private TextField campoPesquisarPergunta;

    @FXML
    private TableColumn<Pergunta, Professor> criadoPorColuna;

    @FXML
    private TableColumn<Pergunta, DificuldadePergunta> dificuldadeColuna;

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

    public void initialize() throws SQLException {
        // Mensagem de tela carregando
        Alert msgCarregando = new Alert(Alert.AlertType.INFORMATION);
        msgCarregando.setTitle("Carregando Perguntas");
        msgCarregando.setHeaderText("Aguarde enquanto as perguntas estão sendo carregadas.");
        msgCarregando.setContentText("Isso pode levar alguns segundos.");
        msgCarregando.show();

        // Configura a coluna de pergunta
        perguntaColuna.setCellValueFactory(cellData -> 
            new SimpleStringProperty(cellData.getValue().getEnunciado())
        );
        
        // Configura a coluna de matéria
        materiaColuna.setCellValueFactory(cellData -> 
            new SimpleStringProperty(String.valueOf(cellData.getValue().getMateria()))
        );
        
        // Configura a coluna de dificuldade
        dificuldadeColuna.setCellFactory(column -> new TableCell<Pergunta, DificuldadePergunta>() {
            @Override
            protected void updateItem(DificuldadePergunta item, boolean empty) {
                super.updateItem(item, empty);
                if (empty || item == null) {
                    setText(null);
                } else {
                    setText(item.toString());
                }
            }
        });
        dificuldadeColuna.setCellValueFactory(cellData -> 
            new SimpleObjectProperty<>(cellData.getValue().getDificuldade())
        );
        
        // Configura a coluna de criador
        criadoPorColuna.setCellFactory(column -> new TableCell<Pergunta, Professor>() {
            @Override
            protected void updateItem(Professor item, boolean empty) {
                super.updateItem(item, empty);
                if (empty || item == null) {
                    setText(null);
                } else {
                    setText(item.getNome());
                }
            }
        });
        criadoPorColuna.setCellValueFactory(cellData -> 
            new SimpleObjectProperty<>(cellData.getValue().getCriador())
        );
        
        // Configura a coluna de ID
        idColuna.setCellValueFactory(cellData ->
        new SimpleIntegerProperty(cellData.getValue().getId()).asObject()
       );

        // Carrega as perguntas
        carregarPerguntas();

        // Fecha a mensagem de carregamento
        msgCarregando.close();
    }
    
    private void carregarPerguntas() throws SQLException {
        perguntas = FXCollections.observableArrayList(obterPerguntas());
        tabelaPerguntas.setItems(perguntas);
        tabelaPerguntas.refresh();
    }


    @FXML
    void criarPergunta(ActionEvent event) throws IOException {
        App.changeScene("area-adm/gerenciar-perguntas/tela-criar-pergunta", "Tela Criar Pergunta");
    }

    @FXML
    void voltarParaPainel(ActionEvent event) throws IOException {
        App.changeScene("area-adm/painel-administrador", "Painel Admnistrador");

    }
}
