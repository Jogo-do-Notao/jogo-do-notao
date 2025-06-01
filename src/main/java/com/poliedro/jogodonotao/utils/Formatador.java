package com.poliedro.jogodonotao.utils;

import java.text.NumberFormat;
import java.util.Locale;

/**
 * Utilitário responsável por formatar dados.
 */
public class Formatador {
    /**
     * Formato de moeda brasileiro (R$).
     */
    private static NumberFormat formatoMoeda = NumberFormat.getCurrencyInstance(Locale.of("pt", "BR"));

    /**
     * Converte a pontuação para um valor monetário.
     *
     * @param pontuacao A pontuação a ser formatada.
     * @return A pontuação formatada como moeda brasileira (R$).
     */
    public static String formatoMonetario(int pontuacao) {
        return formatoMoeda.format(pontuacao);
    }

    /**
     * Converte a pontuação para um valor monetário.
     *
     * @param pontuacao A pontuação a ser formatada.
     * @return A pontuação formatada como moeda brasileira (R$).
     */
    public static String formatoMonetario(long pontuacao) {
        return formatoMoeda.format(pontuacao);
    }
}
