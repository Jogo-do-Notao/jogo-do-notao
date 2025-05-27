package com.poliedro.jogodonotao.database.dao;

import com.poliedro.jogodonotao.agrupadores.Materia;
import com.poliedro.jogodonotao.database.ConexaoDB;
import com.poliedro.jogodonotao.jogo.Partida;
import com.poliedro.jogodonotao.jogo.PartidaStatus;
import com.poliedro.jogodonotao.pergunta.Pergunta;
import com.poliedro.jogodonotao.usuario.Aluno;

import java.sql.*;

/**
 * Classe DAO para a entidade Partida.
 * Responsável por obter e manipular os dados da tabela {@code partida} no banco de dados.
 */
public class PartidaDAO {
    /**
     * Colunas da tabela {@code partida}.
     */
    private enum PartidaColuna {
        // Colunas
        ID("id_partida"),
        ALUNO("id_aluno"),
        MATERIA("id_materia"),
        STATUS("status"),
        RODADA("rodada"),
        PONTUACAO_ACUMULADA("pontuacao_acumulada"),
        PONTUACAO_CHECKPOINT("pontuacao_checkpoint"),
        AJUDA_ELIMINAR("ajuda_eliminar"),
        AJUDA_DICA("ajuda_dica"),
        AJUDA_PULAR("ajuda_pular");


        // Construtor
        private final String coluna;

        PartidaColuna(String coluna) {
            this.coluna = coluna;
        }

        // Getter do valor
        public String get() {
            return coluna;
        }

    }

    /**
     * Registra uma nova partida no banco de dados para o aluno que está logado.
     *
     * @param materia Matéria selecionada pelo aluno.
     * @return Partida Instância da partida criada.
     */
    public static Partida criarPartida(Materia materia) {
        /* valores da partida */
        // id do aluno
        int idAluno = Aluno.getSessaoAtiva().getId();
        // id da materia
        int idMateria = materia.getId();

        // query SQL
        String sql = getInsertSQL(idMateria);

        // Executar query
        try (
                Connection conexao = ConexaoDB.getConnection();
                PreparedStatement stmt = conexao.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS)
        ) {
            // Substituir placeholders
            stmt.setInt(1, idAluno);
            if (idMateria != 0) {  // Se for de matéria especifica
                stmt.setInt(2, idMateria);
            }

            // Executar query
            int linhasAfetadas = stmt.executeUpdate();

            // Se não houver linhas afetadas (não conseguiu criar partida)
            if (linhasAfetadas == 0) {
                throw new RuntimeException("Erro ao criar partida: nenhuma linha  foi afetada.");
            }

            try (ResultSet generatedKeys = stmt.getGeneratedKeys()) {
                if (generatedKeys.next()) {
                    // Obter ID da nova partida e retorna-lá
                    int idPartida = generatedKeys.getInt(1);
                    return buscarPorId(idPartida, true);
                } else {
                    throw new RuntimeException("Erro ao criar partida: nenhum ID foi gerado.");
                }
            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    private static String getInsertSQL(int idMateria) {
        String sql = "INSERT INTO partida ";
        // Campos e valores que serão adicionados na query
        String campos = PartidaColuna.ALUNO.get();
        String placeholders = "?";

        // Verificar se aluno selecionou "Todas as Matérias" ou uma matéria específica
        if (idMateria != 0) {
            // Aluno selecionou matéria específica
            campos += ", " + PartidaColuna.MATERIA.get();
            placeholders += ", ?";
        }
        // adicionar campos e valores na query
        sql += "(" + campos + ") VALUES (" + placeholders + ")";
        return sql;
    }

    /**
     * Obtêm uma partida do banco de dados a partir do seu ID.
     *
     * @param id ID da partida no banco de dados.
     * @return Instância da partida correspondente ou {@code null} se ela não for encontrada.
     */
    public static Partida buscarPorId(int id) {
        return buscarPorId(id, false);
    }

    /**
     * Obtêm uma partida do banco de dados a partir do seu ID.
     *
     * @param id          ID da partida no banco de dados.
     * @param recemCriada Indica se a partida está sendo buscada após sua criação.
     * @return Instância da partida correspondente ou {@code null} se ela não for encontrada.
     */
    public static Partida buscarPorId(int id, boolean recemCriada) {
        // Query SQL
        final String sql = "SELECT * FROM partida WHERE " + PartidaColuna.ID.get() + " = ?";

        // Executar query
        try (
                Connection conexao = ConexaoDB.getConnection();
                PreparedStatement stmt = conexao.prepareStatement(sql)
        ) {
            // Substituir placeholder
            stmt.setInt(1, id);
            // Executar query e obter resultado
            ResultSet res = stmt.executeQuery();

            // Extrair tupla correspondente
            if (res.next()) {
                // Extrair dados da partida
                int idPartida = res.getInt(PartidaColuna.ID.get());
                int idAluno = res.getInt(PartidaColuna.ALUNO.get());
                int idMateria = res.getInt(PartidaColuna.MATERIA.get());
                PartidaStatus status = PartidaStatus.fromString(res.getString(PartidaColuna.STATUS.get()));
                int rodada = res.getInt(PartidaColuna.RODADA.get());
                // lista de perguntas
                int pontuacaoAcumulada = res.getInt(PartidaColuna.PONTUACAO_ACUMULADA.get());
                int pontuacaoCheckpoint = res.getInt(PartidaColuna.PONTUACAO_CHECKPOINT.get());
                int ajudaEliminar = res.getInt(PartidaColuna.AJUDA_ELIMINAR.get());
                int ajudaDica = res.getInt(PartidaColuna.AJUDA_DICA.get());
                int ajudaPular = res.getInt(PartidaColuna.AJUDA_PULAR.get());


                // Criar e retornar instância
                Partida partida;
                if (Aluno.getSessaoAtiva().getId() == idAluno) { // Aluno logado é o jogador da partida
                    // Instância partida vinculada ao aluno logado
                    partida = new Partida(idPartida, MateriaDAO.buscarPorId(idMateria), status, rodada, new Pergunta[15], pontuacaoAcumulada, pontuacaoCheckpoint, ajudaEliminar, ajudaDica, ajudaPular);
                } else {
                    // Instância vinculada a uma nova instância de Aluno
                    partida = new Partida(idPartida, AlunoDAO.buscarPorId(idAluno), MateriaDAO.buscarPorId(idMateria), status, rodada, new Pergunta[15], pontuacaoAcumulada, pontuacaoCheckpoint, ajudaEliminar, ajudaDica, ajudaPular);
                }

                // retornar instância
                return partida;
            }
        } catch (SQLException e) {
            throw new RuntimeException(e); // tratar o erro
        }
        // Se partida não for encontrada
        return null;
    }
}