package com.poliedro.jogodonotao.database.dao;

import com.poliedro.jogodonotao.agrupadores.Materia;
import com.poliedro.jogodonotao.database.ConexaoDB;
import com.poliedro.jogodonotao.pergunta.Alternativa;
import com.poliedro.jogodonotao.pergunta.DificuldadePergunta;
import com.poliedro.jogodonotao.pergunta.Pergunta;
import com.poliedro.jogodonotao.usuario.Professor;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

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
        ArrayList<Pergunta> perguntas = new ArrayList<>();

        try (Connection conexao = ConexaoDB.getConnection()) {
            // Primeiro, obtemos todas as perguntas
            String sqlPerguntas = "SELECT * FROM pergunta";

            try (PreparedStatement stmt = conexao.prepareStatement(sqlPerguntas);
                 ResultSet res = stmt.executeQuery()) {

                // Coletamos os dados básicos das perguntas
                List<Integer> ids = new ArrayList<>();
                Map<Integer, String> titulos = new HashMap<>();
                Map<Integer, String> dicas = new HashMap<>();
                Map<Integer, String> dificuldades = new HashMap<>();
                Map<Integer, Integer> materiasIds = new HashMap<>();
                Map<Integer, Integer> criadoresIds = new HashMap<>();

                while (res.next()) {
                    int id = res.getInt("id_pergunta");
                    ids.add(id);
                    titulos.put(id, res.getString("titulo"));
                    dicas.put(id, res.getString("dica"));
                    dificuldades.put(id, res.getString("dificuldade"));
                    materiasIds.put(id, res.getInt("id_materia"));
                    criadoresIds.put(id, res.getInt("criador"));
                }

                // Buscamos todos os materiais necessários de uma vez
                Set<Integer> idsMateriasUnicas = new HashSet<>(materiasIds.values());
                Map<Integer, Materia> materias = new HashMap<>();
                for (int idMateria : idsMateriasUnicas) {
                    materias.put(idMateria, MateriaDAO.buscarPorId(idMateria));
                }

                // Buscamos todos os professores necessários de uma vez
                Set<Integer> idsCriadoresUnicos = new HashSet<>(criadoresIds.values());
                Map<Integer, Professor> criadores = new HashMap<>();
                for (int idCriador : idsCriadoresUnicos) {
                    criadores.put(idCriador, ProfessorDAO.buscarPorId(idCriador));
                }

                // Agora criamos as perguntas com todos os dados
                for (int id : ids) {
                    String titulo = titulos.get(id);
                    String dica = dicas.get(id);
                    DificuldadePergunta dificuldade = DificuldadePergunta.fromDescricao(dificuldades.get(id));
                    Materia materia = materias.get(materiasIds.get(id));
                    Professor criador = criadores.get(criadoresIds.get(id));
                    List<Alternativa> alternativas = AlternativaDAO.obterAlternativa(id);

                    perguntas.add(new Pergunta(id, titulo, dica, dificuldade, materia, criador, alternativas));
                }
            }
        }

        return perguntas;
    }
}
