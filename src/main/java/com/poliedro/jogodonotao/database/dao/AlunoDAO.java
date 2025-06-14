package com.poliedro.jogodonotao.database.dao;

import com.poliedro.jogodonotao.agrupadores.Turma;
import com.poliedro.jogodonotao.database.ConexaoDB;
import com.poliedro.jogodonotao.usuario.Aluno;
import com.poliedro.jogodonotao.utils.HashSenha;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 * Classe DAO para a entidade Aluno.
 * Responsável por obter e manipular os dados da tabela {@code aluno} no banco de dados.
 *
 * @author Alexandre Raminelli
 */
public class AlunoDAO {
    /**
     * Colunas da tabela {@code aluno}.
     */
    public enum AlunoColuna {
        // Colunas
        ID("id_aluno"),
        ID_TURMA("id_turma"),
        NOME("nome"),
        EMAIL("email"),
        RA("ra"),
        HASH_SENHA("hash_senha"),
        PONTUACAO("pontuacao_geral");

        // Construtor
        private final String coluna;

        AlunoColuna(String coluna) {
            this.coluna = coluna;
        }

        // Getter do valor
        public String get() {
            return coluna;
        }
    }

    /**
     * Busca aluno no banco de dados a partir de um atributo chave (ID, e-mail ou RA).
     *
     * @param coluna O atributo/coluna chave usada na busca. Pode ser ID, e-mail ou RA.
     * @param chave  O valor que será buscado no banco de dados.
     * @return Instância do aluno correspondente ou {@code null} se ele não for encontrado.
     */
    private static Aluno buscarAluno(AlunoColuna coluna, String chave) {
        // Query SQL
        final String sql = "SELECT * FROM aluno WHERE " + coluna.get() + " = ?";

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
                // Extrair dados do aluno
                int id = res.getInt(AlunoColuna.ID.get());
                String nome = res.getString(AlunoColuna.NOME.get());
                String email = res.getString(AlunoColuna.EMAIL.get());
                String ra = res.getString(AlunoColuna.RA.get());
                String hashSenha = res.getString(AlunoColuna.HASH_SENHA.get());
                int idTurma = res.getInt(AlunoColuna.ID_TURMA.get());
                long pontuacao = res.getLong(AlunoColuna.PONTUACAO.get());

                return new Aluno(id, nome, email, ra, hashSenha, TurmaDAO.buscarPorId(idTurma), pontuacao);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e); // tratar o erro
        }
        // Se aluno não for encontrado
        return null;
    }

    /**
     * Procura e retorna uma instância aluno a partir de seu e-mail.
     *
     * @param email E-mail acadêmico do aluno.
     * @return A instância do aluno ou {@code null} se ele não for encontrado.
     */
    public static Aluno buscarPorEmail(String email) {
        return buscarAluno(AlunoColuna.EMAIL, email);
    }

    /**
     * Procura e retorna uma instância aluno a partir de seu RA.
     *
     * @param ra RA (registro acadêmico) do aluno.
     * @return A instância do aluno ou {@code null} se ele não for encontrado.
     */
    public static Aluno buscarPorRa(String ra) {
        return buscarAluno(AlunoColuna.RA, ra);
    }

    /**
     * Procura e retorna uma instância aluno a partir de seu ID.
     *
     * @param id ID do aluno no banco de dados.
     * @return A instância do aluno ou {@code null} se ele não for encontrado.
     */
    public static Aluno buscarPorId(int id) {
        return buscarAluno(AlunoColuna.ID, String.valueOf(id));
    }

    /**
     * Verifica se um e-mail de um aluno está cadastrado no banco de dados.
     *
     * @param email E-mail acadêmico
     * @return {@code true} se o e-mail estiver cadastrado, {@code false} se não.
     */
    public static boolean existeEmail(String email) {
        return buscarPorEmail(email) != null;
    }

    /*private static String getInsertSQL(int idMateria) {
        String sql = "INSERT INTO aluno ";

        String campos =

        // Campos e valores que serão adicionados na query
        String campos = PartidaDAO.PartidaColuna.ALUNO.get();
        String placeholders = "?";

        // Verificar se aluno selecionou "Todas as Matérias" ou uma matéria específica
        if (idMateria != 0) {
            // Aluno selecionou matéria específica
            campos += ", " + PartidaDAO.PartidaColuna.MATERIA.get();
            placeholders += ", ?";
        }
        // adicionar campos e valores na query
        sql += "(" + campos + ") VALUES (" + placeholders + ")";
        return sql;
    }
    */

    /**
     * Verifica se um RA (registro de matrícula) de um aluno está cadastrado no banco de dados.
     *
     * @param ra RA (registro de matrícula)
     * @return {@code true} se o RA estiver cadastrado, {@code false} se não.
     */
    public static boolean existeRa(String ra) {
        return buscarPorRa(ra) != null;
    }

    public static void adicionarAluno(String nome, Turma turma, String ra, String email, String senha) {

        // Criptografar senha
        String hashSenha = HashSenha.obterHash(senha);

        // Montar query SQL
        String sql = "INSERT INTO aluno";
        String campos = AlunoColuna.NOME.get() + ", " + AlunoColuna.RA.get() + "," + AlunoColuna.EMAIL.get() + "," + AlunoColuna.HASH_SENHA.get() + "," + AlunoColuna.ID_TURMA.get();
        String placeholders = "?, ?, ?, ?, ?";
        sql += "(" + campos + ") VALUES (" + placeholders + ")";

        try (
                Connection conexao = ConexaoDB.getConnection();
                PreparedStatement stmt = conexao.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS)) {
            stmt.setString(1, nome);
            stmt.setString(2, ra);
            stmt.setString(3, email);
            stmt.setString(4, hashSenha);
            stmt.setInt(5, turma.getId());

            //execuatr query
            int linhasAfetadas = stmt.executeUpdate();

            if (linhasAfetadas == 0) {
                throw new RuntimeException("Erro ao criar aluno: nenhuma linha  foi afetada.");
            }

            try (ResultSet generatedKeys = stmt.getGeneratedKeys()) {
                if (generatedKeys.next()) {
                    // Obter ID da nova partida e retorna-lá
                    int idAluno = generatedKeys.getInt(1);
                    buscarPorId(idAluno);
                } else {
                    throw new RuntimeException("Erro ao criar aluno: nenhum ID foi gerado.");
                }
            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }


    /**
     * Atualiza os dados de um aluno no banco de dados.
     *
     * @params aluno Instância do aluno com os dados atualizados.
     * @params atributo Atributo que será atualizado.
     */
    public static void atualizarAluno(Aluno aluno, AlunoColuna atributo) {
        // Query SQL
        final String sql = "UPDATE aluno SET " + atributo.get() + " = ? " + // atualizar atributo
                "WHERE " + AlunoColuna.ID.get() + " = ?"; // encontrar aluno

        // Executar query
        try (
                Connection conexao = ConexaoDB.getConnection();
                PreparedStatement stmt = conexao.prepareStatement(sql)
        ) {
            // Substituir placeholders
            switch (atributo) {
                case ID_TURMA:
                    stmt.setInt(1, aluno.getTurma().getId());
                    break;
                case NOME:
                    stmt.setString(1, aluno.getNome());
                    break;
                case EMAIL:
                    stmt.setString(1, aluno.getEmail());
                    break;
                case RA:
                    stmt.setString(1, aluno.getRa());
                    break;
                case HASH_SENHA:
                    stmt.setString(1, aluno.getHashSenha());
                    break;
                case PONTUACAO:
                    stmt.setLong(1, aluno.getPontuacao());
                    break;
            }
            // ID do aluno
            stmt.setInt(2, aluno.getId());

            // Executar update
            int linhasAfetadas = stmt.executeUpdate();
            // Se não houver linhas afetadas (não conseguiu atualizar aluno)
            if (linhasAfetadas == 0) {
                throw new IllegalArgumentException("Não foi possível atualizar o aluno com ID: " + aluno.getId());
            }
        } catch (SQLException e) {
            throw new RuntimeException(e); // tratar o erro
        }
    }
    public static List<Aluno> obterAlunos() {
        List<Aluno> alunos = new ArrayList<>();
        final String sql = "SELECT * FROM aluno";
        
        Connection conexao = null;
        PreparedStatement stmt = null;
        ResultSet res = null;
        
        try {
            conexao = ConexaoDB.getConnection();
            stmt = conexao.prepareStatement(sql);
            res = stmt.executeQuery();
            
            // Primeiro, obter todos os alunos
            List<AlunoTemp> alunosTemp = new ArrayList<>();
            while (res.next()) {
                int id = res.getInt(AlunoColuna.ID.get());
                String nome = res.getString(AlunoColuna.NOME.get());
                String email = res.getString(AlunoColuna.EMAIL.get());
                String ra = res.getString(AlunoColuna.RA.get());
                String hashSenha = res.getString(AlunoColuna.HASH_SENHA.get());
                int idTurma = res.getInt(AlunoColuna.ID_TURMA.get());
                long pontuacao = res.getLong(AlunoColuna.PONTUACAO.get());
                
                alunosTemp.add(new AlunoTemp(id, nome, email, ra, hashSenha, idTurma, pontuacao));
            }
            
            // Fechar o ResultSet e o Statement após ler todos os dados
            if (res != null) {
                try { res.close(); } catch (SQLException e) { /* Ignorar erro ao fechar */ }
            }
            if (stmt != null) {
                try { stmt.close(); } catch (SQLException e) { /* Ignorar erro ao fechar */ }
            }
            
            // Agora, para cada aluno, buscar a turma correspondente
            for (AlunoTemp temp : alunosTemp) {
                Turma turma = TurmaDAO.buscarPorId(temp.idTurma);
                alunos.add(new Aluno(temp.id, temp.nome, temp.email, temp.ra, temp.hashSenha, turma, temp.pontuacao));
            }
            
        } catch (SQLException e) {
            System.err.println("Erro ao obter alunos:");
            e.printStackTrace();
            throw new RuntimeException("Erro ao carregar alunos do banco de dados", e);
        } finally {
            // Garantir que os recursos sejam fechados
            if (res != null) {
                try { res.close(); } catch (SQLException e) { /* Ignorar erro ao fechar */ }
            }
            if (stmt != null) {
                try { stmt.close(); } catch (SQLException e) { /* Ignorar erro ao fechar */ }
            }
            if (conexao != null) {
                try { conexao.close(); } catch (SQLException e) { /* Ignorar erro ao fechar */ }
            }
        }
        
        return alunos;
    }
    
    // Classe temporária para armazenar os dados do aluno antes de buscar a turma
    private static class AlunoTemp {
        int id;
        String nome;
        String email;
        String ra;
        String hashSenha;
        int idTurma;
        long pontuacao;
        
        AlunoTemp(int id, String nome, String email, String ra, String hashSenha, int idTurma, long pontuacao) {
            this.id = id;
            this.nome = nome;
            this.email = email;
            this.ra = ra;
            this.hashSenha = hashSenha;
            this.idTurma = idTurma;
            this.pontuacao = pontuacao;
        }

    }
    /**
     * Exclui um aluno do banco de dados.
     *
     * @param idAluno ID do aluno a ser excluído
     * @return true se a exclusão foi bem-sucedida, false caso contrário
     */
    public static boolean excluirAluno(int idAluno) {
        Connection conexao = null;
        try {
            conexao = ConexaoDB.getConnection();
            conexao.setAutoCommit(false); // Inicia transação

            // Primeiro, excluir registros relacionados na tabela partida
            String sqlPartida = "DELETE FROM partida WHERE id_aluno = ?";
            try (PreparedStatement stmtPartida = conexao.prepareStatement(sqlPartida)) {
                stmtPartida.setInt(1, idAluno);
                stmtPartida.executeUpdate();
            }

            // Depois, excluir o aluno
            String sqlAluno = "DELETE FROM aluno WHERE id_aluno = ?";
            try (PreparedStatement stmtAluno = conexao.prepareStatement(sqlAluno)) {
                stmtAluno.setInt(1, idAluno);
                int linhasAfetadas = stmtAluno.executeUpdate();

                if (linhasAfetadas > 0) {
                    conexao.commit(); // Confirma a transação
                    return true;
                } else {
                    conexao.rollback(); // Desfaz a transação
                    return false;
                }
            }
        } catch (SQLException e) {
            try {
                if (conexao != null) {
                    conexao.rollback(); // Em caso de erro, faz rollback
                }
            } catch (SQLException ex) {
                System.err.println("Erro ao fazer rollback da transação: " + ex.getMessage());
            }
            System.err.println("Erro ao excluir aluno: " + e.getMessage());
            e.printStackTrace();
            return false;
        } finally {
            try {
                if (conexao != null) {
                    conexao.setAutoCommit(true); // Restaura o auto-commit
                    conexao.close();
                }
            } catch (SQLException e) {
                System.err.println("Erro ao fechar conexão: " + e.getMessage());
            }
        }
    }
    /**
     * Atualiza a senha de um aluno no banco de dados.
     *
     * @param idAluno ID do aluno que terá a senha atualizada.
     * @param novaSenhaHash Nova senha já criptografada.
     * @return {@code true} se a atualização for bem-sucedida, {@code false} caso contrário.
     */
    public static boolean atualizarSenha(int idAluno, String novaSenhaHash) {
        String sql = "UPDATE aluno SET hash_senha = ? WHERE id_aluno = ?";

        try (Connection conexao = ConexaoDB.getConnection();
             PreparedStatement stmt = conexao.prepareStatement(sql)) {

            stmt.setString(1, novaSenhaHash);
            stmt.setInt(2, idAluno);

            int linhasAfetadas = stmt.executeUpdate();
            return linhasAfetadas > 0;

        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

}