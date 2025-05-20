package com.poliedro.jogodonotao.database.dao;

/**
 * Classe DAO para a entidade Aluno.
 * Responsável por obter e manipular os dados da tabela {@code professor} no banco de dados.
 *
 * @author Alexandre Raminelli
 */
public class AlunoDAO {
    /** Colunas da tabela aluno. */
    enum AlunoColunas {
        ID("id"),
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
        // Acessar o valor
        @Override
        public String toString() {
            return coluna;
        }
    }

    /** Query SQL para buscar um aluno no banco de dados. */
    String sqlSelect = "SELECT ? FROM aluno WHERE ? = ?";

    /**
     * Procura e retorna o ID de um aluno a partir de seu e-mail.
      * @param email E-mail acadêmico do aluno.
     * @return O ID do aluno ou {@code -1} se ele não for encontrado.
     */
    public static int obterIdPorEmail(String email) {
        return 1;
    }

    // TESTE
    public static void main(String[] args) {
        System.out.println(
                AlunoColunas.NOME
        );
        System.out.println(AlunoColunas.PONTUACAO);
    }
}
