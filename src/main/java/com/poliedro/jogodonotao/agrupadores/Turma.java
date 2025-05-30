package com.poliedro.jogodonotao.agrupadores;

import com.poliedro.jogodonotao.database.ConexaoDB;
import com.poliedro.jogodonotao.database.dao.MateriaDAO;
import com.poliedro.jogodonotao.usuario.Professor;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 * Turma utilizada para agrupar os alunos e facilitar a busca e gerenciamento.
 */
public class Turma {
    // Atributos
    /**
     * ID da turma no banco de dados.
     */
    private int id;
    /**
     * Nome da turma. Usado como identificador.
     */
    private String nome;
    /**
     * Professor responsável pela turma.
     */
    private Professor professor;
    /**
     * Série da turma.
     */
    private byte serie;
    /**
     * Descrição da turma.
     */
    private String descricao;

    // Construtor
    public Turma(int id, String nome, /*Professor professor, */ byte serie, String descricao) {
        this.id = id;
        this.nome = nome;
        //this.professor = professor;
        this.serie = serie;
        this.descricao = descricao;
    }

    // Getters

    public int getId() {
        return id;
    }

    public String getNome() {
        return nome;
    }

    public Professor getProfessor() {
        return professor;
    }

    public byte getSerie() {
        return serie;
    }

    public String getDescricao() {
        return descricao;
    }
}
