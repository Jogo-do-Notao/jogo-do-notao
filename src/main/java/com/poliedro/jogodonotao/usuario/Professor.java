package com.poliedro.jogodonotao.usuario;

import com.poliedro.jogodonotao.App;
import com.poliedro.jogodonotao.utils.HashSenha;
import javafx.scene.control.Alert;

import java.io.IOException;

/**
 * Classe que representa um professor do jogo.
 */
public class Professor extends Usuario {
    /**
     * Sessão ativa do professor. Representa o professor que está logado no momento.
     */
    private static Professor sessaoAtiva;
    /**
     * Descrição do professor, como matérias e séries lecionadas.
     */
    private String descricao;
    /**
     * Se o professor possui permissão para cadastrar outros professores.
     */
    private boolean coordenador = false;

    // Construtores

    /**
     * Construtor a partir do ID do banco de dados.
     */
    public Professor(int id) {
        //
    }

    /**
     * Construtor a partir das informações.
     */
    public Professor(int id, String nome, String email, String senha, String descricao, boolean coordenador) {
        this.id = id;
        this.nome = nome;
        this.email = email;
        this.hashSenha = senha;
        this.descricao = descricao;
        this.coordenador = coordenador;
    }

    // Getters
    public static Professor getSessaoAtiva() {
        return sessaoAtiva;
    }

    public String getDescricao() {
        return descricao;
    }

    public boolean isCoordenador() {
        return coordenador;
    }

    // Setters
    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public void setCoordenador(boolean coordenador) {
        this.coordenador = coordenador;
    }

    // Métodos

    /**
     * Verifica se a senha informada corresponde ao professor que iniciou a sessão.
     * Em caso afirmativo, atribui a instância do professosr que está logando a variável de sessão ativa.
     * Caso contrário, exibe uma mensagem de erro.
     *
     * @param senha Senha inserida no login que será autenticada.
     */
    public void iniciarSessao(String senha) throws IOException {
        if (HashSenha.verificarSenha(senha, this.getHashSenha())) {
            /* Se a senha estiver correta */
            // Exibir mensagem de sucesso
            Alert alert = new Alert(Alert.AlertType.INFORMATION);
            alert.setTitle("Autenticação bem-sucedida!");
            alert.setHeaderText("Autenticação bem-sucedida!");
            alert.setContentText("Bem-vindo, " + this.getNome() + "!");
            alert.show();

            // Iniciar sessão do professor
            sessaoAtiva = this;

            // Redirecionar para o Painel do Administrador
            App.changeScene("painel-administrador", "Painel do Administrador");
        } else {
            /* Se a senha estiver incorreta */
            Alert alert = new Alert(Alert.AlertType.WARNING);
            alert.setTitle("Erro de autenticação!");
            alert.setHeaderText("Senha inválida!");
            alert.setContentText(
                    """
                                    A senha informada é inválida!
                            
                                    Verifique se digitou a senha corretamente ou entre em contato com o suporte da instituição caso precise de ajuda para recuperar ou validar sua senha.
                            """
            );
            alert.showAndWait();
        }
    }

}
