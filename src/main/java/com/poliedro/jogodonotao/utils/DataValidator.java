package com.poliedro.jogodonotao.utils;

/**
 * Utilitário para validação de dados.
 * Contém métodos estáticos para validar dados, como nome, e-mail acadêmico e RA (registro de matrícula), conforme o formato do Colégio Poliedro.
 *
 * @author Alexandre Raminelli
 */
public class DataValidator {
    // regex (expressão regular): retorna true se a string seguir o formato especificado.
    /**
     * Regex para validar nomes.
     */
    private final static String REGEX_NAME = "^([\\p{L}]+(?:\\h+[\\p{L}]+)*)$";

    /**
     * Regex para validar RA (registro de matrícula) do Colégio Poliedro.
     */
    private final static String REGEX_RA = "^\\d{2}\\.\\d{3}-\\d$";

    /**
     * Regex para validar e-mail de alunos (@p4ed.com).
     */
    private final static String REGEX_EMAIL_ALUNO = "^[a-zA-Z0-9._%+-]+@p4ed\\.com$";

    /**
     * Regex para validar e-mail de professores (@sistemapoliedro.com.br).
     */
    private final static String REGEX_EMAIL_PROFESSOR = "^[a-zA-Z0-9._%+-]+@sistemapoliedro\\.com\\.br$";


    /**
     * Método para validar um nome. O nome é válido se ele possui somente caracteres alfabéticos, sem númerais ou caracteres especiais.
     *
     * @param nome Nome a ser validado.
     * @return Se o nome é valido, retorna {@code true}. Caso contrário, retorna {@code false}.
     */
    public static boolean isNomeValido(String nome) {
        return nome.matches(REGEX_NAME);
    }

    /**
     * Método para validar o RA (registro de matrícula).
     *
     * @param ra RA a ser validado.
     * @return Se o RA é válido e segue o padrão do Colégio Poliedro, retorna {@code true}. Caso contrário, retorna {@code false}.
     */
    public static boolean isRaValido(String ra) {
        return ra.matches(REGEX_RA);
    }

    /**
     * Método para validar o e-mail acadêmico do aluno.
     *
     * @param email E-mail a ser validado.
     * @return Se o e-mail informado seguir o formato do e-mail acadêmico de aluno (@p4ed.com), retorna {@code true}. Caso contrário, retorna {@code false}.
     */
    public static boolean isEmailAlunoValido(String email) {
        return email.matches(REGEX_EMAIL_ALUNO);
    }

    /**
     * Método para validar o e-mail do professor.
     *
     * @param email E-mail a ser validado.
     * @return Se o e-mail informado seguir o formato do e-mail do professor (@sistemapoliedro.com.br), retorna {@code true}. Caso contrário, retorna {@code false}.
     */
    public static boolean isEmailProfessorValido(String email) {
        return email.matches(REGEX_EMAIL_PROFESSOR);
    }
}
