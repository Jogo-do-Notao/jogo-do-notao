package com.poliedro.jogodonotao.jogo;

public enum PartidaStatus {
    // Status possíveis da partida
    ANDAMENTO("em_andamento"),
    GANHA("ganha"),
    PERDIDA("perdida"),
    ABANDONADA("abandonada");

    // Retornar o status correspondente ao nome
    private String status;

    PartidaStatus(String status) {
        this.status = status;
    }

    public String get() {
        return status;
    }
}
