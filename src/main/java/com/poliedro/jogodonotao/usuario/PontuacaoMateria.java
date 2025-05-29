package com.poliedro.jogodonotao.usuario;

import com.poliedro.jogodonotao.agrupadores.Materia;

public class PontuacaoMateria {
    private Aluno aluno;
    private Materia materia;
    private long pontuacao;

    public PontuacaoMateria() {}

    public PontuacaoMateria(Aluno aluno, Materia materia, long pontuacao) {
        this.aluno = aluno;
        this.materia = materia;
        this.pontuacao = pontuacao;
    }

    public Aluno getAluno() {
        return aluno;
    }

    public void setAluno(Aluno aluno) {
        this.aluno = aluno;
    }

    public Materia getMateria() {
        return materia;
    }

    public void setMateria(Materia materia) {
        this.materia = materia;
    }

    public long getPontuacao() {
        return pontuacao;
    }

    public void setPontuacao(long pontuacao) {
        this.pontuacao = pontuacao;
    }
}
