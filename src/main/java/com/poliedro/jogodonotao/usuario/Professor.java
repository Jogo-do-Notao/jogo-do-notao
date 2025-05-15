package com.poliedro.jogodonotao.usuario;

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
        this.senha = senha;
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
     * Inicia a sessão do professor.
     *
     * @param professor Instância do professor que iniciou a sessão.
     */
    public static void iniciarSessao(Professor professor) {
        sessaoAtiva = professor;
    }

}
