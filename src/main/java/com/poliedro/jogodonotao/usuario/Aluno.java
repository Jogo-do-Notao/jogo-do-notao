package com.poliedro.jogodonotao.usuario;

import com.poliedro.jogodonotao.App;
import com.poliedro.jogodonotao.agrupadores.Turma;
import com.poliedro.jogodonotao.pergunta.Pergunta;
import com.poliedro.jogodonotao.utils.HashSenha;
import javafx.scene.control.Alert;

import java.io.IOException;
import java.util.ArrayList;

/**
 * Classe que representa um aluno do jogo.
 */
public class Aluno extends Usuario {
    /**
     * Sessão ativa do aluno.
     * Representa o aluno que está logado no momento.
     */
    private static Aluno sessaoAtiva;
    /**
     * RA (registro de matrícula) do aluno.
     */
    private String ra;
    /**
     * Pontuação total do aluno.
     */
    private long pontuacao = 0;
    /**
     * Turma do aluno.
     */
    private Turma turma;
    /**
     * Lista de perguntas que já foram respondidas pelo aluno.
     */
    private ArrayList<Pergunta> perguntasRespondidas = new ArrayList<>();
    /**
     * Pontuação do aluno para cada matéria.
     */
    private ArrayList<PontuacaoMateria> pontuacaoMateria = new ArrayList<>();

    // Construtor
    public Aluno(int id, String nome, String email, String ra, String hashSenha, long pontuacao /*Turma turma*/) {
        this.id = id;
        this.nome = nome;
        this.email = email;
        this.ra = ra;
        this.hashSenha = hashSenha;
        this.pontuacao = pontuacao;
    }

    // Getters
    public static Aluno getSessaoAtiva() {
        return sessaoAtiva;
    }

    public String getRa() {
        return ra;
    }

    public long getPontuacao() {
        return pontuacao;
    }

    public Turma getTurma() {
        return turma;
    }

    public ArrayList<Pergunta> getPerguntasRespondidas() {
        return perguntasRespondidas;
    }

    public ArrayList<PontuacaoMateria> getPontuacaoMateria() {
        return pontuacaoMateria;
    }

    // Métodos

    /**
     * Verifica se a senha informada corresponde ao aluno que está iniciando uma sessão. Em caso afirmativo, atribui a instância do aluno que está logando a variável de sessão ativa. Caso contrário, exibe uma mensagem de erro.
     * @param senha Senha inserida no login que será autenticada.
     * @throws IOException Exceção de entrada e saída.
     */
    public void iniciarSessao(String senha) throws IOException {
        if (HashSenha.verificarSenha(senha, this.getHashSenha())) {
            /* Se a senha estiver correta */
            // Exibir mensagem de sucesso
            // Exibir mensagem de sucesso
            Alert alert = new Alert(Alert.AlertType.INFORMATION);
            alert.setTitle("Aluno logado com sucesso!");
            alert.setHeaderText("Autenticação bem-sucedida!");
            alert.setContentText("Bem-vindo, " + this.getNome() + "!");
            alert.show();

            // Iniciar sessão do aluno
            sessaoAtiva = this;

            // Redirecionar para o Painel do Aluno
            App.changeScene("painel-aluno", "Painel do Aluno");
        } else {
            /* Se a senha estiver incorreta */
            Alert alert = new Alert(Alert.AlertType.WARNING);
            alert.setTitle("Erro de autenticação!");
            alert.setHeaderText("Senha inválida!");
            alert.setContentText("A senha informada é inválida!\n\nVerifique se digitou a senha corretamente ou entre em contato com o suporte da instituição caso precise de ajuda para recuperar ou validar sua senha."
            );
            alert.showAndWait();
        }
    }
}