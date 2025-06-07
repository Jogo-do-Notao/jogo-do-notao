package com.poliedro.jogodonotao.controller;

import com.poliedro.jogodonotao.App;
import com.poliedro.jogodonotao.agrupadores.Turma;
import com.poliedro.jogodonotao.database.dao.AlunoDAO;
import com.poliedro.jogodonotao.database.dao.TurmaDAO;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.Alert;
import javafx.scene.control.ComboBox;
import javafx.scene.control.TextField;
import javafx.fxml.Initializable;
import java.io.IOException;
import java.net.URL;
import java.util.ArrayList;
import java.util.ResourceBundle;

public class ControleAdicionarAluno implements Initializable {

    @FXML
    private TextField campoConfirmarSenha;

    @FXML
    private TextField campoEmail;

    @FXML
    private TextField campoNome;

    @FXML
    private TextField campoRegistroMatricula;

    @FXML
    private TextField campoSenha;


    private ArrayList<Turma> turmas;//atributo classe

    @FXML
    private ComboBox<String> campoTurma;

    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {
        //obter turmas do banco de dados
        turmas = TurmaDAO.obterTurma();
        //obter apenas nome da turma
        ArrayList<String> nomeTurma= new ArrayList<>();
        //inserir turmas no combobox
        for(Turma t: turmas){
            nomeTurma.add(t.getNome());
        }
        //Inserir todos o nomes da turma na combobox
        campoTurma.getItems().addAll(nomeTurma);
    }

    @FXML
    void adicionarAluno(ActionEvent event) throws IOException {
        String nome = campoNome.getText();
        String ra = campoRegistroMatricula.getText();
        String senha = campoSenha.getText();
        String confirmarsenha = campoConfirmarSenha.getText();
        String email = campoEmail.getText();


        if (campoTurma.getValue() == null) {
            Alert alert = new Alert(Alert.AlertType.WARNING);
            alert.setTitle("Aviso");
            alert.setHeaderText("Selecione uma turma");
            alert.setContentText("Por favor, selecione uma turma para o aluno.");
            alert.showAndWait();
            return;
        }
        String nomeTurmaSelecionada = campoTurma.getValue();
        Turma turmaSelecionada = null;
        for (Turma t : turmas) {
            if (t.getNome().equals(nomeTurmaSelecionada)) {
                turmaSelecionada = t;
                break;
            }
        }


        if (AlunoDAO.buscarPorRa(ra) != null) {
            Alert alert = new Alert(Alert.AlertType.WARNING);
            alert.setTitle("Erro ao cadastrar aluno");
            alert.setHeaderText("Registro de matricula já cadastrado no sistema");
            alert.setContentText("O registro de matricula digitado no campo Registro de matricula já está registrado no sistema.\nPor favor digite um registro diferente.");
            alert.showAndWait();
            return;
        } else {
            AlunoDAO.adicionarAluno(nome, turmaSelecionada, ra, email, senha);
            App.changeScene("area-adm/painel-administrador", "Gerenciar Alunos");
        }
    }

    @FXML
    void voltarParaPainel(ActionEvent event) throws IOException {
        App.changeScene("area-adm/gerenciar-alunos/tela-gerenciar-alunos", "Gerenciar Alunos");

    }
}