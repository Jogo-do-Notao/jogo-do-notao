package com.poliedro.jogodonotao.usuario;

public class PontuacaoMateria {
    private int idAluno;
    private int idMateria;
    private long pontuacao;

    public PontuacaoMateria() {
    }

    public PontuacaoMateria(int idAluno, int idMateria, long pontuacao) {
        this.idAluno = idAluno;
        this.idMateria = idMateria;
        this.pontuacao = pontuacao;
    }

    public int getIdAluno() {
        return idAluno;
    }

    public void setIdAluno(int idAluno) {
        this.idAluno = idAluno;
    }

    public int getIdMateria() {
        return idMateria;
    }

    public void setIdMateria(int idMateria) {
        this.idMateria = idMateria;
    }

    public long getPontuacao() {
        return pontuacao;
    }

    public void setPontuacao(long pontuacao) {
        this.pontuacao = pontuacao;
    }
}
