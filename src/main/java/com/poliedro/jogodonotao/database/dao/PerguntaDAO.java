package com.poliedro.jogodonotao.database.dao;

import com.poliedro.jogodonotao.agrupadores.Materia;
import com.poliedro.jogodonotao.database.ConexaoDB;
import com.poliedro.jogodonotao.pergunta.DificuldadePergunta;
import com.poliedro.jogodonotao.pergunta.Pergunta;
import com.poliedro.jogodonotao.usuario.Professor;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class PerguntaDAO {
    /**
     * Colunas da tabela {@code aluno}.
     */
    private enum PerguntaColuna {
        // Colunas
        ID("id_pergunta"),
        MATERIA("id_materia"),
        CRIADOR("criador"),
        ENUNCIADO("titulo"),
        DIFICULDADE("dificuldade"),
        DICA("dica");

        // Construtor
        private final String coluna;

        PerguntaColuna(String coluna) {
            this.coluna = coluna;
        }

        // Getter do valor
        public String get() {
            return coluna;
        }
    }

    public static ArrayList<Pergunta> obterPerguntas() throws SQLException {

        final String sql = "select * from pergunta";

        ArrayList<Pergunta> perguntas = new ArrayList<>();

        try (
            Connection conexao = ConexaoDB.getConnection();
            PreparedStatement stmt = conexao.prepareStatement(sql);
            ResultSet res = stmt.executeQuery()
        ){
            //extrair tuplas da tabela
            while (res.next()) {
                   //extrair atributos
                int id = res.getInt(PerguntaColuna.ID.get());
                String titulo = res.getString(PerguntaColuna.ENUNCIADO.get());
                String dica = res.getString(PerguntaColuna.DICA.get());
                DificuldadePergunta dificuldade = DificuldadePergunta.valueOf(res.getString(PerguntaColuna.DIFICULDADE.get()));
                Materia materia = MateriaDAO.buscarPorId(res.getInt(PerguntaColuna.MATERIA.get()));
                Professor criador = ProfessorDAO.buscarPorId(res.getInt(PerguntaColuna.CRIADOR.get()));
                //String editor = res.getString(PerguntaColuna.EDITOR.get());
                // adicionar a lista
                perguntas.add(new Pergunta(id,titulo,dica,dificuldade,materia,criador, AlternativaDAO.obterAlternativa(id)));
                }
        }



        return perguntas;
    }

}
