package com.poliedro.jogodonotao.controller;

import com.poliedro.jogodonotao.database.ConexaoDB;
import com.poliedro.jogodonotao.utils.ConexaoInternet;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.PasswordField;
import javafx.scene.control.TextField;
import javafx.scene.control.ToggleButton;
import javafx.scene.control.ToggleGroup;
import javafx.scene.layout.VBox;

import javax.swing.JOptionPane;

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
        // Exibir/ocultar formulário de aluno
        formAluno.setVisible(opcaoLoginAluno.isSelected());
        // Exibir/ocultar formulário de professor
        formProfessor.setVisible(opcaoLoginProfessor.isSelected());
    }

    /** Método que autentica o aluno. */
    @FXML
    void autenticarAluno(ActionEvent event) {
        // Verificar conexão com Internet e banco de dados
        checkConexao();

    }

    /** Método que autentica o professor. */
    @FXML
    void autenticarProfessor(ActionEvent event) {
        // Verificar conexão com Internet e banco de dados
        checkConexao();
    }

    /**
     * Método para verificar a conexão com a Internet e banco de dados.
     * Se houver um problema com a conexão, mostra um aviso ao usuário.
     */
    void checkConexao() {
        // Verificar conexão com a Internet
        if (!ConexaoInternet.checkInternet()) {
            JOptionPane.showMessageDialog(
                    null,
                    "Não foi possível acessar o sistema porque seu dispositivo está sem conexão com a Internet. \nVerifique se o Wi-Fi ou os dados móveis estão ativados e funcionando corretamente. \nO login só pode ser realizado quando houver conexão ativa.",
                    "Sem conexão com a Internet",
                    JOptionPane.WARNING_MESSAGE // ícone de aviso
            );
            return; // sair do método
        }
        System.out.println("Nenhum problema com a conexão a Internet.");
        // Verificar conexão com o banco de dados
        if (!ConexaoDB.checkConnection()) {
            JOptionPane.showMessageDialog(
                    null,
                    "Estamos enfrentando dificuldades para acessar os dados necessários. \nIsso pode ter ocorrido por instabilidade no servidor ou manutenção temporária. \nPor favor, tente novamente em alguns minutos. \nSe o problema continuar, entre em contato com o suporte da escola.",
                    "Erro ao conectar ao sistema",
                    JOptionPane.WARNING_MESSAGE // ícone de aviso
            );
            return; // sair do método
        }
        System.out.println("Nenhum problema com a conexão com o banco de dados.");
    }
}
