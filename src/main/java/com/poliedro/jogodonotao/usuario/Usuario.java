package com.poliedro.jogodonotao.usuario;

/**
 * Classe abstrata que representa um usuário do jogo.
 * É usada como base para as classes {@link Aluno} e {@link Professor}.
 */
public abstract class Usuario {
    /**
     * ID do usuário no banco de dados.
     */
    protected int id;
    /**
     * Nome do usuário.
     */
    protected String nome;
    /**
     * E-mail do usuário.
     */
    protected String email;
    /**
     * Hash da senha do usuário.
     */
    protected String hashSenha;

    // Getters
    public int getId() {
        return id;
    }

    public String getNome() {
        return nome;
    }

    public String getEmail() {
        return email;
    }

    public String getHashSenha() {
        return hashSenha;
    }
    
    public void setHashSenha(String hashSenha) {
        this.hashSenha = hashSenha;
    }
}
