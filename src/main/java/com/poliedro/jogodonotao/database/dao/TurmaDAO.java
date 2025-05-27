package com.poliedro.jogodonotao.database.dao;

import com.poliedro.jogodonotao.agrupadores.Turma;
import com.poliedro.jogodonotao.database.ConexaoDB;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Classe DAO para a entidade Turma.
 * Responsável por obter e manipular os dados da tabela {@code turma} no banco de dados.
 */
public class TurmaDAO {
    /**
     * Colunas da tabela {@code turma}.
     */
    private enum TurmaColuna {
        // Colunas
        ID("id_turma"),
        PROFESSOR("professor_responsavel"),
        NOME("nome"),
        SERIE("serie"),
        DESCRICAO("descricao");

        // Construtor
        private final String coluna;

        TurmaColuna(String coluna) {
            this.coluna = coluna;
        }

        // Getter do valor
        public String get() {
            return coluna;
        }
    }

    /**
     * Busca uma turma no banco de dados a partir de um atributo chave (ID ou nome).
     *
     * @param coluna O atributo/coluna chave usada na busca. Pode ser ID ou nome.
     * @param chave  O valor que será buscado no banco de dados.
     * @return Instância da turma correspondente ou {@code null} se ela não for encontrado.
     */
    private static Turma buscarTurma(TurmaColuna coluna, String chave) {
        // Query SQL
        final String sql = "SELECT * FROM turma WHERE " + coluna.get() + " = ?";

        // Executar query
        try (
                Connection conexao = ConexaoDB.getConnection();
                PreparedStatement stmt = conexao.prepareStatement(sql)
        ) {
            // Substituir placeholder
            stmt.setString(1, chave); // e-mail sendo buscado
            // Executar query e obter resultado
            ResultSet res = stmt.executeQuery();

            // Extrair tupla correspondente
            if (res.next()) {
                // criar instância da turma com os dados do banco
                return new Turma(
                        res.getInt(TurmaColuna.ID.get()), // id
                        res.getString(TurmaColuna.NOME.get()), // nome
                        // res.getString(TurmaColuna.PROFESSOR.get()), // responsavel
                        res.getByte(TurmaColuna.SERIE.get()), // serie
                        res.getString(TurmaColuna.DESCRICAO.get()) // descricao
                );
            }
        } catch (SQLException e) {
            throw new RuntimeException(e); // tratar o erro
        }
        // Se turma não for encontrada
        return null;
    }

    /**
     * Procura e retorna uma instância turma a partir de seu ID.
     *
     * @param id ID da turma no banco de dados.
     * @return Instância da turma ou {@code null} se ela não for encontrada.
     */
    public static Turma buscarPorId(int id) {
        return buscarTurma(TurmaColuna.ID, String.valueOf(id));
    }

    public static Turma buscarPorNome(String nome) { return buscarTurma(TurmaColuna.NOME, nome); }
}
