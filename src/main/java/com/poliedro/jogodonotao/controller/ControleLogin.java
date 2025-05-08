package com.poliedro.jogodonotao.controller;

import com.poliedro.jogodonotao.database.ConexaoDB;
import com.poliedro.jogodonotao.utils.ConexaoInternet;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.*;
import javafx.scene.control.Alert.AlertType;
import javafx.scene.layout.VBox;

/**
 * Classe controladora da tela de login.
 *
 * @author Alexandre Raminelli
 */
public class ControleLogin {
    /**
     * Formulário de autenticação do aluno.
     */
    @FXML
    private VBox formAluno;
    /**
     * Campo de e-mail/RA do aluno.
     */
    @FXML
    private TextField inputLoginAluno;
    /**
     * Campo de senha do aluno.
     */
    @FXML
    private PasswordField inputSenhaAluno;

    /**
     * Formulário de autenticação do professor.
     */
    @FXML
    private VBox formProfessor;
    /**
     * Campo de e-mail do professor.
     */
    @FXML
    private TextField inputLoginProfessor;
    /**
     * Campo de senha do professor.
     */
    @FXML
    private PasswordField inputSenhaProfessor;

    /**
     * Grupo de tabs com as opções de login.
     */
    @FXML
    private ToggleGroup loginOption;
    /**
     * Tab da opção de login do aluno.
     */
    @FXML
    private ToggleButton opcaoLoginAluno;
    /**
     * Tab da opção de login do professor.
     */
    @FXML
    private ToggleButton opcaoLoginProfessor;

    /**
     * Método que altera o formulário de autenticação exibido quando houver uma interação com as tabs.
     */
    @FXML
    void alterarFormulario(ActionEvent event) {
        // Exibir/ocultar formulário de aluno
        formAluno.setVisible(opcaoLoginAluno.isSelected());
        // Exibir/ocultar formulário de professor
        formProfessor.setVisible(opcaoLoginProfessor.isSelected());
    }

    /**
     * Método que autentica o aluno.
     */
    @FXML
    void autenticarAluno(ActionEvent event) {
        /* Verificar:
         * - Conexão com a Internet e banco de dados
         * - Se os campos estão preenchidos
         */
        if (!checkConexao() || !isCamposPreenchidos(inputLoginAluno, inputSenhaAluno)) {
            return; // encerrar método
        }
    }

    /**
     * Método que autentica o professor.
     */
    @FXML
    void autenticarProfessor(ActionEvent event) {
        /* Verificar:
         * - Conexão com a Internet e banco de dados
         * - Se os campos estão preenchidos
         */
        if (!checkConexao() || !isCamposPreenchidos(inputLoginProfessor, inputSenhaProfessor)) {
            return; // encerrar método
        }
    }

    /**
     * Método para verificar a conexão com a Internet e banco de dados.
     * Se houver um problema com a conexão, mostra um aviso ao usuário.
     */
    boolean checkConexao() {
        // Verificar conexão com a Internet
        if (!ConexaoInternet.checkInternet()) {
            /* Exibir mensagem de erro com Alert do JavaFX */
            Alert alert = new Alert(AlertType.WARNING);
            alert.setHeaderText("Não foi possível acessar o sistema");
            alert.setContentText("Seu dispositivo está sem conexão com a Internet. \n\nVerifique se o Wi-Fi ou os dados móveis estão ativados e funcionando corretamente. \n\nO login só pode ser realizado quando houver conexão ativa.");
            alert.showAndWait();

            return false; // sair do método
        }
        System.out.println("Nenhum problema com a conexão a Internet.");

        // Verificar conexão com o banco de dados
        if (!ConexaoDB.checkConnection()) {
            /* Exibir mensagem de erro com Alert do JavaFX */
            Alert alert = new Alert(AlertType.ERROR);
            alert.setHeaderText("Erro ao conectar ao sistema");
            alert.setContentText("Estamos enfrentando dificuldades para acessar os dados necessários. \n\nIsso pode ter ocorrido por instabilidade no servidor ou manutenção temporária. \n\nPor favor, tente novamente em alguns minutos. \n\nSe o problema continuar, entre em contato com o suporte da escola.");
            alert.showAndWait();
            return false; // sair do método
        }
        System.out.println("Nenhum problema com a conexão com o banco de dados.");
        return true;
    }

    /**
     * Método para verificar se os campos estão preenchidos.
     *
     * @param campoLogin Campo de e-mail/RA do aluno ou professor.
     * @param campoSenha Campo de senha.
     */
    boolean isCamposPreenchidos(
            TextField campoLogin, PasswordField campoSenha
    ) {
        if (campoLogin.getText().isEmpty() || campoSenha.getText().isEmpty()) {
            Alert alert = new Alert(AlertType.WARNING);
            alert.setHeaderText("Campos incompletos");
            alert.setContentText("Por favor, preencha todos os campos.");
            alert.showAndWait();
            return false;
        }
        return true;
    }
}
