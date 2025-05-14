package com.poliedro.jogodonotao.database;

import io.github.cdimascio.dotenv.Dotenv;

import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * Classe responsável pela conexão com o banco de dados MySQL no Aiven.
 *
 * @author Alexandre Raminelli
 */
public class ConexaoDB {
    /**
     * Conexão com o banco de dados MySQL no Aiven.
     */
    private static Connection connection;

    /**
     * Carrega as variáveis de ambiente do arquivo .env no classpath.
     * Permite a conexão do banco de dados ao executar o arquivo JAR.
     */
    private static Dotenv loadDotenv() throws IOException {
        InputStream input = ConexaoDB.class.getClassLoader().getResourceAsStream(".env");
        // Verificar se o arquivo foi encontrado
        if (input == null) throw new IOException(".env não encontrado no classpath!");
        // Salvar .env em arquivo temporário
        Path tempFile = Files.createTempFile(".env", null);
        Files.copy(input, tempFile, StandardCopyOption.REPLACE_EXISTING);

        return Dotenv.configure() // configurar o dotenv para ler o arquivo .env temporário
                .directory(tempFile.getParent().toString()) // diretório do arquivo
                .filename(tempFile.getFileName().toString()) // nome do arquivo
                .load(); // ler o arquivo
    }

    /**
     * Obtêm uma instância única da conexão com o banco de dados.
     *
     * @return Conexão com o banco de dados MySQL no Aiven.
     */
    public static Connection getConnection() throws SQLException {
        // Verificar se há uma conexão ativa
        if (connection == null || connection.isClosed()) {
            /* Se não houver uma conexão ativa, cria uma nova conexão */
            try {
                // Carregar o driver do MySQL
                Class.forName("com.mysql.cj.jdbc.Driver");

                // Carregar URI das variáveis de ambiente
                Dotenv dotenv = loadDotenv();
                String uri = dotenv.get("DB_SERVICE_URI");

                // Estabelecer conexão com o banco de dados usando o URI
                connection = DriverManager.getConnection(uri);
            } catch (SQLException | ClassNotFoundException e) {
                // Se ocorrer um erro
                System.err.println(
                        "Erro ao conectar ao banco de dados: \n" +
                                e.getMessage()
                );
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }
        // Retornar a conexão
        return connection;
    }

    /**
     * Verifica se a conexão com o banco de dados está ativa.
     *
     * @return {@code true} se a conexão estiver ativa e funcionando, ou {@code false} caso contrário.
     */
    public static boolean checkConnection() {
        try {
            Connection conexao = getConnection(); // obter a conexão
            // retorna true se a conexão estiver ativa e aberta
            return conexao != null && !conexao.isClosed();
        } catch (SQLException e) {
            return false; // se ocorrer uma exceção, retorna false
        }
    }
}
