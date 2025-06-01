package com.poliedro.jogodonotao.database.dao;

import com.poliedro.jogodonotao.agrupadores.Turma;
import com.poliedro.jogodonotao.database.ConexaoDB;

import java.sql.*;
import java.util.ArrayList;

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

    public static Turma buscarPorNome(String nome) {
        return buscarTurma(TurmaColuna.NOME, nome);
    }

    public static ArrayList<Turma> obterTurma() {
        // query SQL
        final String sql = "SELECT * FROM turma";
        // lista de matérias

        ArrayList<Turma> turmas = new ArrayList<>();

        // Executar query
        try (
                Connection conexao = ConexaoDB.getConnection();
                PreparedStatement stmt = conexao.prepareStatement(sql);
                ResultSet res = stmt.executeQuery()
        ) {
            // Extrair tuplas da tabela
            while (res.next()) {
                // extrair atributos
                int id = res.getInt(TurmaColuna.ID.get());
                String nome = res.getString(TurmaColuna.NOME.get());
                byte serie = res.getByte(TurmaColuna.SERIE.get());
                String descrição = res.getString(TurmaColuna.DESCRICAO.get());
                // adicionar a lista
                turmas.add(new Turma(id, nome, serie,descrição ));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e); // tratamento de erro
        }
        // retornar lista de matérias
        return turmas;

    }
    public static void adicionarTurma(String nome, String professor, String serie, String descricao) {


        // Montar query SQL
        String sql = "INSERT INTO turma";
        String campos = TurmaDAO.TurmaColuna.NOME.get() + ", " + TurmaColuna.PROFESSOR.get() + "," + TurmaColuna.SERIE.get() + "," + TurmaColuna.DESCRICAO.get() ;
        String placeholders = "?, ?, ?, ?";
        sql += "(" + campos + ") VALUES (" + placeholders + ")";

        try (
                Connection conexao = ConexaoDB.getConnection();
                PreparedStatement stmt = conexao.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS)) {
            stmt.setString(1, nome);
            stmt.setString(2, professor);
            stmt.setString(3, serie);
            stmt.setString(4, descricao);

            //execuatr query
            int linhasAfetadas = stmt.executeUpdate();

            if (linhasAfetadas == 0) {
                throw new RuntimeException("Erro ao criar turma: nenhuma linha  foi afetada.");
            }

            try (ResultSet generatedKeys = stmt.getGeneratedKeys()) {
                if (generatedKeys.next()) {
                    // Obter ID da nova partida e retorna-lá
                    int idTurma = generatedKeys.getInt(1);
                    buscarPorId(idTurma);
                } else {
                    throw new RuntimeException("Erro ao criar turma: nenhum ID foi gerado.");
                }
            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}