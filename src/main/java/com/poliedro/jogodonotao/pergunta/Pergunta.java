package com.poliedro.jogodonotao.pergunta;

import com.poliedro.jogodonotao.agrupadores.Materia;
import com.poliedro.jogodonotao.usuario.Professor;
import java.util.List;

public class Pergunta {
    private int idPergunta;
    private String titulo;
    private String dica;
    private DificuldadePergunta dificuldade;
    private Materia materia;
    private Professor criador;
    private List<Alternativa> alternativas;

    public Pergunta() {}

    public Pergunta(int idPergunta, String titulo, String dica, DificuldadePergunta dificuldade,
                    Materia materia, Professor criador, List<Alternativa> alternativas) {
        this.idPergunta = idPergunta;
        this.titulo = titulo;
        this.dica = dica;
        this.dificuldade = dificuldade;
        this.materia = materia;
        this.criador = criador;
        this.alternativas = alternativas;
    }

    public int getIdPergunta() {
        return idPergunta;
    }

    public void setIdPergunta(int idPergunta) {
        this.idPergunta = idPergunta;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getDica() {
        return dica;
    }

    public void setDica(String dica) {
        this.dica = dica;
    }

    public DificuldadePergunta getDificuldade() {
        return dificuldade;
    }

    public void setDificuldade(DificuldadePergunta dificuldade) {
        this.dificuldade = dificuldade;
    }

    public Materia getMateria() {
        return materia;
    }

    public void setMateria(Materia materia) {
        this.materia = materia;
    }

    public Professor getCriador() {
        return criador;
    }

    public void setCriador(Professor criador) {
        this.criador = criador;
    }

    public List<Alternativa> getAlternativas() {
        return alternativas;
    }

    public void setAlternativas(List<Alternativa> alternativas) {
        this.alternativas = alternativas;
    }
}
