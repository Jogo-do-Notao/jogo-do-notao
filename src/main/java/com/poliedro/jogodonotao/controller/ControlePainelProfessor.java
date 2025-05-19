package com.poliedro.jogodonotao.controller;

import com.poliedro.jogodonotao.usuario.Professor;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.text.Text;

import java.net.URL;
import java.util.ResourceBundle;

public class ControlePainelProfessor implements Initializable {

    @FXML
    private Text coordenadorText;

    @FXML
    private Text descricaoText;

    @FXML
    private Text emailText;

    @FXML
    private Text idText;

    @FXML
    private Text nomeText;

    @FXML
    private Text senhaText;

    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {
        idText.setText("ID no banco de dados: " + Professor.getSessaoAtiva().getId());
        nomeText.setText("Nome: " + Professor.getSessaoAtiva().getNome());
        emailText.setText("Email: " + Professor.getSessaoAtiva().getEmail());
        senhaText.setText("Hash da Senha: " + Professor.getSessaoAtiva().getHashSenha());
        descricaoText.setText("Descrição: " + Professor.getSessaoAtiva().getDescricao());
        coordenadorText.setText("Coordenador: " + Professor.getSessaoAtiva().isCoordenador());
    }
}
