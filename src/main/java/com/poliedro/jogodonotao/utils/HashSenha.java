package com.poliedro.jogodonotao.utils;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

/**
 * Classe utilitária para criptografia de senhas.
 * Utiliza o Spring Security Crypto Module e o algoritmo BCrypt.
 *
 * @author Alexandre Raminelli
 */
public class HashSenha {
    /** Códificador para obter o hash das senha. */
    private static final PasswordEncoder encoder = new BCryptPasswordEncoder(14);

    /**
     * Método para criptografar uma senha.
     *
     * @param senha Senha a ser criptografada.
     * @return O hash da senha obtido pelo BCrypt.
     */
    public static String obterHash(String senha){
        return encoder.encode(senha);
    }

    /**
     * Método para verificar uma senha com a senha criptografada.
     *
     * @param senha Senha a ser verificada.
     * @param hash Hash da senha no banco de dados.
     *
     * @return Se a senha for correta, retorna {@code true}. Caso contrário, retorna {@code false}.
     */
    public static boolean verificarSenha(String senha, String hash) {
        return encoder.matches(senha, hash);
    }
}
