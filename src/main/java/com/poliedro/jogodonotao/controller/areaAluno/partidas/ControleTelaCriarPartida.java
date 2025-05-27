package com.poliedro.jogodonotao.controller.areaAluno.partidas;

import com.poliedro.jogodonotao.App;
import com.poliedro.jogodonotao.agrupadores.Materia;
import com.poliedro.jogodonotao.database.dao.MateriaDAO;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Alert;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.cell.PropertyValueFactory;

import java.io.IOException;
import java.net.URL;
import java.util.ResourceBundle;

public class ControleTelaCriarPartida implements Initializable {
    /**
     * Tabela com as opções de matérias disponíveis para a partida.
     */
    @FXML
    private TableView<Materia> opcoesMateria;
    /**
     * Coluna com o nome das matérias.
     */
    @FXML
    private TableColumn<Materia, String> colunaNomeMateria;


    /**
     * Método executado ao abrir o scene.
     */
    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {
        // Listar matérias disponíveis na tabela
        // Vincular colunas com atributos da classe
        colunaNomeMateria.setCellValueFactory(new PropertyValueFactory<>("nome"));
        // Obter matérias do DB
        ObservableList<Materia> materias = FXCollections.observableArrayList();
        materias.add(new Materia(0,"Todas as Matérias"));
        materias.addAll(FXCollections.observableArrayList(MateriaDAO.obterMaterias()));
        // Adicionar matérias na tabela
        opcoesMateria.setItems(materias);

        System.out.println("Materias encontradas:" + materias.size()); // Verifica se há dados
    }

    /**
     * Cria uma nova partida.
     */
    @FXML
    void criarPartida(ActionEvent event) {
        Alert alert = new Alert(Alert.AlertType.INFORMATION);
        alert.setHeaderText("Matéria selecionada: ");
        alert.setContentText("ID da matéria no DB: ");
        alert.show();
    }

    /**
     * Volta pra tela do painel do aluno.
     */
    @FXML
    void voltarProPainel(ActionEvent event) throws IOException {
        App.changeScene("area-aluno/painel-aluno", "Painel do aluno");
    }


}
