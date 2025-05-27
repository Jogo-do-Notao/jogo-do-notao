package com.poliedro.jogodonotao.controller;

import com.poliedro.jogodonotao.App;
import com.poliedro.jogodonotao.database.dao.TurmaDAO;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.Alert;
import javafx.scene.control.MenuButton;
import javafx.scene.control.TextField;

import java.io.IOException;

public class ControleCriarTurma {

    @FXML
    private TextField campoDescricaoTurma;

    @FXML
    private TextField campoNome;

    @FXML
    private MenuButton campoResponsavel;

    @FXML
    private MenuButton campoSerie;

    @FXML
    void criarTurma(ActionEvent event) throws IOException {
        String nome = campoNome.getText();
        String descricao = campoDescricaoTurma.getText();
        String responsavel = campoResponsavel.getText();
        String serie = campoSerie.getText();

        // verificar se nome ja esta sendo usado
        if(TurmaDAO.buscarPorNome(nome) != null) {
            // inválido
                Alert alert = new Alert(Alert.AlertType.WARNING);
                alert.setTitle("Erro ao cadastrar turma");
                alert.setHeaderText("O nome já esta sendo utilizado no sistema");
                alert.setContentText("O nome digitado no campo Nome da Turma, ja esta registrado no sistema.\nPor favor digite um nome diferente");
                alert.showAndWait();
                return;
        }else{
            //salvar no banco de dados
            App.changeScene("area-adm/gerenciar-turmas/tela-gerenciar-turmas", "Gerenciar Turmas");
        }




    }

    @FXML
    void voltarParaPainel(ActionEvent event) throws IOException {
        App.changeScene("area-adm/gerenciar-turmas/tela-gerenciar-turmas", "Gerenciar Turmas");


    }

}

