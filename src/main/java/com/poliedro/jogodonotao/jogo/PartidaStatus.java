package com.poliedro.jogodonotao.jogo;

public enum PartidaStatus {
    // Status possíveis da partida
    ANDAMENTO("Em Andamento"),
    GANHA("Ganha"),
    PERDIDA("Perdida"),
    ABANDONADA("Abandonada");

    // Retornar o status correspondente ao nome
    private String status;

    PartidaStatus(String status) {
        this.status = status;
    }

    public String get() {
        return status;
    }

    /**
     * Converter texto salvo no banco de dados para o enum correto.
     */
    public static PartidaStatus fromString(String status) {
        for (PartidaStatus ps : PartidaStatus.values()) {
            if (ps.get().equalsIgnoreCase(status) || ps.name().equalsIgnoreCase(status)) {
                return ps;
            }
        }
        throw new IllegalArgumentException("Status inválido: " + status);
    }
}
