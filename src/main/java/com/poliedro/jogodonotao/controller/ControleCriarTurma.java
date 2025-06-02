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

import java.io.IOException;
import java.net.URL;
import java.util.ArrayList;
import java.util.ResourceBundle;

public class ControleCriarTurma implements Initializable {

    @FXML
    private TextField campoDescricaoTurma;

    @FXML
    private TextField campoNome;



    @FXML
    private ComboBox<String> campoResponsavel;

    @FXML
    private ComboBox<String> campoSerie;

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



    }


    @FXML
    void criarTurma(ActionEvent event) throws IOException {
        String nome = campoNome.getText();
        String descricao = campoDescricaoTurma.getText();
        String serie = String.valueOf(campoSerie.getValue());
        String professor = String.valueOf(campoResponsavel.getValue());

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
            TurmaDAO.adicionarTurma(nome, professor, serie, descricao);
            // mudar de interface
            App.changeScene("area-adm/gerenciar-turmas/tela-gerenciar-turmas", "Gerenciar Turmas");
        }




    }

    @FXML
    void voltarParaPainel(ActionEvent event) throws IOException {
        App.changeScene("area-adm/gerenciar-turmas/tela-gerenciar-turmas", "Gerenciar Turmas");


    }

}