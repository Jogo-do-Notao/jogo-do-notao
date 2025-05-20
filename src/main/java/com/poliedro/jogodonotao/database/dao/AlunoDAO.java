package com.poliedro.jogodonotao.database.dao;

import com.poliedro.jogodonotao.database.ConexaoDB;
import com.poliedro.jogodonotao.usuario.Aluno;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Classe DAO para a entidade Aluno.
 * Responsável por obter e manipular os dados da tabela {@code professor} no banco de dados.
 *
 * @author Alexandre Raminelli
 */
public class AlunoDAO {
    /**
     * Colunas da tabela aluno.
     */
    enum AlunoColunas {
        ID("id_aluno"),
        ID_TURMA("id_turma"),
        NOME("nome"),
        EMAIL("email"),
        RA("ra"),
        HASH_SENHA("senha"),
        PONTUACAO("pontuacao_geral");

        // Construtor
        private final String coluna;

        AlunoColunas(String coluna) {
            this.coluna = coluna;
        }

        // Getter do valor
        public String get() {
            return coluna;
        }
    }

    /**
     * Procura e retorna uma instância aluno a partir de seu e-mail.
     *
     * @param email E-mail acadêmico do aluno.
     * @return O ID do aluno ou {@code -1} se ele não for encontrado.
     */
    public static Aluno buscarPorEmail(String email) {
        // Query SQL
        String sql = "SELECT * FROM aluno WHERE email = ?";

        // Executar query
        try (
                Connection conexao = ConexaoDB.getConnection();
                PreparedStatement stmt = conexao.prepareStatement(sql)
        ) {
            // Substituir placeholder
            stmt.setString(1, email); // e-mail sendo buscado
            // Executar query e obter resultado
            ResultSet res = stmt.executeQuery();

            // Extrair tupla correspondente
            if (res.next()) {
                return new Aluno(
                        res.getInt(AlunoColunas.ID.get()),
                        res.getString(AlunoColunas.NOME.get()),
                        res.getString(AlunoColunas.EMAIL.get()),
                        res.getString(AlunoColunas.RA.get()),
                        res.getString(AlunoColunas.HASH_SENHA.get()),
                        res.getLong(AlunoColunas.PONTUACAO.get())
                );
            }


        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        // Se não for encontrado
        return null;
    }

    // TESTE
    public static void main(String[] args) {
        Aluno aluno = buscarPorEmail("poliedro1@p4ed.com");

        System.out.println("Nome: " + aluno.getNome());
        System.out.println("RA: " + aluno.getRa());
        System.out.println("Pontuação: " + aluno.getPontuacao());
    }
}
