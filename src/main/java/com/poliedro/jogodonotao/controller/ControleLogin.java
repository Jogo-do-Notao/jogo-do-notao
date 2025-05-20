package com.poliedro.jogodonotao.controller;

import com.poliedro.jogodonotao.App;
import com.poliedro.jogodonotao.database.ConexaoDB;
import com.poliedro.jogodonotao.database.dao.ProfessorDAO;
import com.poliedro.jogodonotao.usuario.Professor;
import com.poliedro.jogodonotao.utils.ConexaoInternet;
import com.poliedro.jogodonotao.utils.DataValidator;
import com.poliedro.jogodonotao.utils.HashSenha;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.*;
import javafx.scene.control.Alert.AlertType;
import javafx.scene.layout.VBox;

import java.io.IOException;

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
        // Verificar tipo de login (e-mail ou RA) e obter o ID
        int AlunoId = getIdAluno(inputLoginAluno.getText());
        if (AlunoId == -1) {
            return;
        }

    }

    /**
     * Método que autentica o professor.
     */
    @FXML
    void autenticarProfessor(ActionEvent event) throws IOException {
        /* Verificar:
         * - Conexão com a Internet e banco de dados
         * - Se os campos estão preenchidos
         */
        if (!checkConexao() || !isCamposPreenchidos(inputLoginProfessor, inputSenhaProfessor)) {
            return; // encerrar método
        }

        // Verificar e-mail
        String email = inputLoginProfessor.getText();
        if (!DataValidator.isEmailProfessorValido(email)) {
            /* Mensagem de e-mail inválido */
            Alert alert = new Alert(AlertType.WARNING);
            alert.setTitle("Erro de autenticação!");
            alert.setHeaderText("E-mail institucional inválido!");
            alert.setContentText(
                    """
                            O e-mail informado não pertence ao domínio institucional dos professores e funcionários (@sistemapoliedro.com.br).
                            
                            Por questões de segurança e controle de acesso, apenas professores e funcionários com e-mails acadêmicos do Poliedro podem acessar esta plataforma.
                            
                            Verifique se digitou o e-mail corretamente ou entre em contato com o suporte da instituição caso precise de ajuda para recuperar ou validar seu endereço institucional."""
            );
            alert.showAndWait();
            return; // encerrar método
        }

        // Buscar professor por e-mail
        Professor professorLogando = ProfessorDAO.buscarPorEmail(email);
        // Se professor não for encontrado
        if (professorLogando == null) {
            Alert alert = new Alert(AlertType.WARNING);
            alert.setHeaderText("E-mail não encontrado!");
            alert.setContentText(
                    """
                            O e-mail fornecido não está cadastrado no nosso sistema!
                            
                            Verifique se digitou o e-mail corretamente ou entre em contato com o suporte da instituição caso precise de ajuda para recuperar ou validar seu endereço institucional."""
            );
            alert.showAndWait();
            return; // encerrar método
        }
        // Verificar senha e iniciar sessão
        professorLogando.iniciarSessao(professorLogando, inputSenhaProfessor.getText());
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
        // System.out.println("Nenhum problema com a conexão a Internet.");

        // Verificar conexão com o banco de dados
        if (!ConexaoDB.checkConnection()) {
            /* Exibir mensagem de erro com Alert do JavaFX */
            Alert alert = new Alert(AlertType.ERROR);
            alert.setHeaderText("Erro ao conectar ao sistema");
            alert.setContentText("Estamos enfrentando dificuldades para acessar os dados necessários. \n\nIsso pode ter ocorrido por instabilidade no servidor ou manutenção temporária. \n\nPor favor, tente novamente em alguns minutos. \n\nSe o problema continuar, entre em contato com o suporte da escola.");
            alert.showAndWait();
            return false; // sair do método
        }
        // System.out.println("Nenhum problema com a conexão com o banco de dados.");
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

    /**
     * Método para obter o ID do aluno no banco de dados.
     *
     * @param inputValue O valor do campo de login do aluno.
     */
    int getIdAluno(String inputValue) {
        // Verificar tipo de login
        if (DataValidator.isEmailAlunoValido(inputValue)) {
            // E-mail
            // System.out.println("Tipo de login: e-mail");
            // System.out.println("Buscando e-mail no banco de dados...");
            return 1;
        } else if (DataValidator.isRaValido(inputValue)) {
            // RA
            // System.out.println("Tipo de login: RA");
            // System.out.println("Buscando RA no banco de dados...");
            return 2;
        } else {
            // Inválido
            Alert alert = new Alert(AlertType.WARNING);
            alert.setHeaderText("Entrada inválida");
            alert.setContentText("Os dados inseridos no campo de login são inválidos.\n\nÉ necessário inserir o e-mail acadêmico do Poliedro ou o RA (registro de matrícula) para realizar a autenticação.");
            alert.showAndWait();
            return -1;
        }
    }
}
