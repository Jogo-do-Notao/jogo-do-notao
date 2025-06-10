package com.poliedro.jogodonotao.controller;

import com.poliedro.jogodonotao.database.dao.AlunoDAO;
import com.poliedro.jogodonotao.database.dao.ProfessorDAO;
import com.poliedro.jogodonotao.usuario.Aluno;
import com.poliedro.jogodonotao.usuario.Professor;
import com.poliedro.jogodonotao.utils.HashSenha;
import javafx.fxml.FXML;
import javafx.scene.control.Alert;
import javafx.scene.control.ButtonType;
import javafx.scene.control.PasswordField;

import java.io.IOException;
import java.util.Optional;

public class ControleAlterarSenha {
    @FXML
    private PasswordField campoConfirmarSenha;

    @FXML
    private PasswordField campoSenha;

    @FXML
    void alterarSenha(javafx.event.ActionEvent event) {
        String novaSenha = campoSenha.getText();
        String confirmacaoSenha = campoConfirmarSenha.getText();

        // Validar se os campos estão preenchidos
        if (novaSenha.isEmpty() || confirmacaoSenha.isEmpty()) {
            mostrarAlerta("Erro", "Preencha todos os campos!", "Por favor, preencha tanto a nova senha quanto a confirmação.");
            return;
        }

        // Validar se as senhas coincidem
        if (!novaSenha.equals(confirmacaoSenha)) {
            mostrarAlerta("Erro", "Senhas não conferem!", "As senhas digitadas não são iguais. Por favor, tente novamente.");
            return;
        }

        // Validar força da senha (mínimo de 6 caracteres)
        if (novaSenha.length() < 6) {
            mostrarAlerta("Senha Fraca", "Senha muito curta!", "A senha deve ter no mínimo 6 caracteres.");
            return;
        }

        // Confirmar a alteração
        if (!confirmarAlteracao()) {
            return;
        }

        // Atualizar a senha no banco de dados
        try {
            boolean sucesso = false;
            
            // Verificar se é um aluno ou professor logado
            if (Aluno.getSessaoAtiva() != null) {
                // Atualizar senha do aluno
                Aluno aluno = Aluno.getSessaoAtiva();
                String hashNovaSenha = HashSenha.obterHash(novaSenha);
                sucesso = AlunoDAO.atualizarSenha(aluno.getId(), hashNovaSenha);
                
                if (sucesso) {
                    aluno.hashSenha = hashNovaSenha;
                }
            } else if (Professor.getSessaoAtiva() != null) {
                // Atualizar senha do professor
                Professor professor = Professor.getSessaoAtiva();
                String hashNovaSenha = HashSenha.obterHash(novaSenha);
                sucesso = ProfessorDAO.atualizarSenha(professor.getId(), hashNovaSenha);
                
                if (sucesso) {
                    professor.setHashSenha(hashNovaSenha);
                }
            } else {
                mostrarAlerta("Erro", "Nenhum usuário logado", "Não foi possível identificar o usuário logado.");
                return;
            }

            if (sucesso) {
                mostrarAlerta("Sucesso", "Senha alterada com sucesso!", "Sua senha foi atualizada com sucesso.");
                // Limpar campos após alteração bem-sucedida
                campoSenha.clear();
                campoConfirmarSenha.clear();
            } else {
                mostrarAlerta("Erro", "Falha ao alterar senha", "Ocorreu um erro ao tentar alterar a senha. Por favor, tente novamente.");
            }
        } catch (Exception e) {
            e.printStackTrace();
            mostrarAlerta("Erro", "Erro inesperado", "Ocorreu um erro inesperado ao tentar alterar a senha.");
        }
    }

    private boolean confirmarAlteracao() {
        Alert alert = new Alert(Alert.AlertType.CONFIRMATION);
        alert.setTitle("Confirmar Alteração");
        alert.setHeaderText("Deseja realmente alterar sua senha?");
        alert.setContentText("Esta ação não pode ser desfeita.");

        Optional<ButtonType> result = alert.showAndWait();
        return result.isPresent() && result.get() == ButtonType.OK;
    }

    private void mostrarAlerta(String titulo, String cabecalho, String conteudo) {
        Alert alert = new Alert(Alert.AlertType.INFORMATION);
        alert.setTitle(titulo);
        alert.setHeaderText(cabecalho);
        alert.setContentText(conteudo);
        alert.showAndWait();
    }
}
