package com.poliedro.jogodonotao.controller;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.PasswordField;
import javafx.scene.control.TextField;
import javafx.scene.control.ToggleButton;
import javafx.scene.control.ToggleGroup;
import javafx.scene.layout.VBox;

/**
 * Classe controladora da tela de login.
 *
 * @author Alexandre Raminelli
 */
public class ControleLogin {
    /** Formulário de autenticação do aluno. */
    @FXML
    private VBox formAluno;
    /** Campo de e-mail/RA do aluno. */
    @FXML
    private TextField inputLoginAluno;
    /** Campo de senha do aluno. */
    @FXML
    private PasswordField inputSenhaAluno;

    /** Formulário de autenticação do professor. */
    @FXML
    private VBox formProfessor;
    /** Campo de e-mail do professor. */
    @FXML
    private TextField inputLoginProfessor;
    /** Campo de senha do professor. */
    @FXML
    private TextField inputSenhaProfessor;

    /** Grupo de tabs com as opções de login. */
    @FXML
    private ToggleGroup loginOption;
    /** Tab da opção de login do aluno. */
    @FXML
    private ToggleButton opcaoLoginAluno;
    /** Tab da opção de login do professor. */
    @FXML
    private ToggleButton opcaoLoginProfessor;

    /** Método que altera o formulário de autenticação exibido quando houver uma interação com as tabs. */
    @FXML
    void alterarFormulario(ActionEvent event) {

    }

    /** Método que autentica o aluno. */
    @FXML
    void autenticarAluno(ActionEvent event) {

    }

    /** Método que autentica o professor. */
    @FXML
    void autenticarProfessor(ActionEvent event) {

    }

}
