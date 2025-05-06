package com.poliedro.jogodonotao.utils;

import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URL;

/**
 * Classe utilitária para verificar a conexão com a Internet.
 *
 * @author Alexandre Raminelli
 */
public class ConexaoInternet {
    /**
     * Método para verificar a conexão com a Internet.
     *
     * @return Se houver conexão com a Internet, retorna {@code true}. Caso contrário, retorna {@code false}.
     */
    public static boolean checkInternet() {
        // Tentar se conectar a um servidor externo
        try {
            // Criar URL para teste de conexão
            URI uri = URI.create("https://www.google.com");
            URL url = uri.toURL();

            HttpURLConnection conexao = (HttpURLConnection) url.openConnection(); // abrir conexão
            conexao.setRequestMethod("HEAD"); // definir o tipo de requisição
            conexao.setConnectTimeout(3000); // definir o tempo de espera
            conexao.setReadTimeout(3000); // definir o tempo de leitura
            int resposta = conexao.getResponseCode(); // obter o status code

            // Retorna true se o status code for 2xx (bem-sucedido) ou 3xx (redirecionamento)
            return (resposta >= 200 && resposta < 400);

        } catch (IOException e) {
            // Se ocorrer um erro na conexão, retorna false
            return false;
        }
    }
}
