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
}
