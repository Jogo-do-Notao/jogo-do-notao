package com.poliedro.jogodonotao.controller.areaAluno.partidas;

import com.poliedro.jogodonotao.App;
import com.poliedro.jogodonotao.agrupadores.Materia;
import com.poliedro.jogodonotao.database.dao.MateriaDAO;
import com.poliedro.jogodonotao.jogo.Partida;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.ListView;
import javafx.scene.control.cell.PropertyValueFactory;

import java.io.IOException;
import java.net.URL;
import java.util.ArrayList;
import java.util.ResourceBundle;

public class ControleTelaCriarPartida implements Initializable {
    /**
     * Lista com as opções de matérias disponíveis para a partida.
     */
    @FXML
    private ListView<Materia> opcoesMateria;

    /**
     * Método executado ao abrir o scene.
     * <p>
     * Lista as matérias disponíveis para criar uma partida.
     */
    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {
        /* Listar as matérias disponíveis */
        // Converter lista de matérias em ObservableList
        ObservableList<Materia> materias = FXCollections.observableArrayList(
                new Materia(0, "Todas as Matérias") // Adiciona a opção de todas as matérias
        );
        materias.addAll(FXCollections.observableArrayList(
                MateriaDAO.obterMaterias() // obter matérias do banco de dados
        ));
        // Adicionar ObservableList na ListView
        opcoesMateria.setItems(materias);

        // Configurar a ListView para exibir o nome da matéria
        opcoesMateria.setCellFactory(
                listView -> new javafx.scene.control.ListCell<>() {
                    @Override
                    protected void updateItem(Materia materia, boolean empty) {
                        super.updateItem(materia, empty);
                        setText((empty || materia == null) ? null : materia.getNome());
                    }
                });

    }

    /**
     * Cria uma nova partida.
     * Obtêm a matéria selecionada, cria uma nova partida no banco de dados e abre a tela de partida.
     */
    @FXML
    void criarPartida(ActionEvent event) throws IOException {
        // Obter matéria selecionada
        Materia materia = opcoesMateria.getSelectionModel().getSelectedItem();

        // Criar nova partida
        Partida.criarPartida(materia);
    }

    /**
     * Volta pra tela do painel do aluno.
     */
    @FXML
    void voltarProPainel(ActionEvent event) throws IOException {
        App.changeScene("area-aluno/painel-aluno", "Painel do aluno");
    }


}
