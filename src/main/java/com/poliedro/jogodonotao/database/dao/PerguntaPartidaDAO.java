package com.poliedro.jogodonotao.database.dao;

import com.poliedro.jogodonotao.jogo.Partida;
import com.poliedro.jogodonotao.pergunta.Pergunta;

/**
 * Classe DAO para a entidade PerguntaPartida.
 * Responsável por obter e manipular os dados da tabela {@code pergunta_partida} no banco de dados.
 */
public class PerguntaPartidaDAO {
    /**
     * Colunas da tabela {@code pergunta_partida}.
     */
    public enum PerguntaPartidaColuna {
        // Colunas
        ID("id_pergunta"),
        PARTIDA("id_partida"),
        RODADA("rodada");

        // Construtor
        private final String coluna;

        PerguntaPartidaColuna(String coluna) {
            this.coluna = coluna;
        }

        // Getter do valor
        public String get() {
            return coluna;
        }
    }

    /**
     * Registra uma pergunta sendo feita em uma partida.
     *
     * @param pergunta Pergunta a ser registrada.
     * @param partida  Partida na qual a pergunta foi feita.
     */
    public static void registrarPergunta(Pergunta pergunta, Partida partida) {
        final String sql = "INSERT INTO pergunta_partida (id_pergunta, id_partida, rodada) VALUES (?, ?, ?)";
        try (
                java.sql.Connection conexao = com.poliedro.jogodonotao.database.ConexaoDB.getConnection();
                java.sql.PreparedStatement stmt = conexao.prepareStatement(sql)
        ) {
            // Substituir placeholders
            stmt.setInt(1, pergunta.getId());
            stmt.setInt(2, partida.getID());
            stmt.setInt(3, partida.getRodada());
            // Executar UPDATE
            stmt.executeUpdate();
        } catch (Exception e) {
            throw new RuntimeException("Erro ao registrar pergunta na partida", e);
        }
    }
}
