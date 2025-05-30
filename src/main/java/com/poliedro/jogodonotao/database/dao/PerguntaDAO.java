package com.poliedro.jogodonotao.database.dao;

import com.poliedro.jogodonotao.database.ConexaoDB;
import com.poliedro.jogodonotao.jogo.Partida;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 * Classe DAO para a entidade Pergunta.
 * Responsável por obter e manipular os dados da tabela {@code pergunta} no banco de dados.
 */
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

    /**
     * Obtém um arraylist com os IDs das perguntas que podem ser sorteadas.
     * As perguntas são filtradas por matéria (se for diferente de "Todas as Matérias"), e por dificuldade.
     * <p>
     * A lista só inclui perguntas que o aluno não respondeu anteriormente, ou seja, que não estão na tabela {@code pergunta_partida}.
     */
    public static ArrayList<Integer> obterListaDeSorteio(
            Partida partida
    ) {
        // Lista de IDs das perguntas que podem ser sorteadas
        ArrayList<Integer> lista = new ArrayList<>();

        // Colunas utilizadas
        String idPergunta = PerguntaColuna.ID.get();
        String idAluno = AlunoDAO.AlunoColuna.ID.get();
        String dificuldade = PerguntaColuna.DIFICULDADE.get();
        String idMateria = PerguntaColuna.MATERIA.get();

        // Query SQL
        String sql = "SELECT p." + idPergunta + " FROM pergunta p " +
                "LEFT JOIN pergunta_partida pp ON p." + idPergunta + " = pp." + idPergunta + " AND pp." + idAluno + " = ? " + // Verifica se o aluno já respondeu a pergunta
                "WHERE (p." + idMateria + " = ? OR ? = -1) " + // Filtrar apenas as perguntas que o aluno não respondeu
                "AND p." + dificuldade + " = ? " + // Filtrar por dificuldade
                "AND pp." + idPergunta + " IS NULL"; // Verifica se a pergunta não foi respondida pelo aluno

        // Executar consulta
        try (
                Connection conexao = ConexaoDB.getConnection();
                PreparedStatement stmt = conexao.prepareStatement(sql)
        ) {
            // Substituir placeholders
            stmt.setInt(1, partida.getAluno().getId()); // ID do aluno
            stmt.setInt(2, partida.getMateria() != null ? partida.getMateria().getId() : -1); // ID da matéria (ou −1 para "Todas as Matérias")
            stmt.setInt(3, partida.getMateria() != null ? partida.getMateria().getId() : -1); // ID da matéria (ou −1 para "Todas as Matérias")
            stmt.setString(4, partida.getDificuldade().get()); // Dificuldade da pergunta

            // Executar a consulta e preencher a lista
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                lista.add(rs.getInt(idPergunta));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        // Retornar a lista
        return lista;
    }
}
