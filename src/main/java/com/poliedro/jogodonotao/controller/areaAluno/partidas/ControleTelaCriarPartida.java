package com.poliedro.jogodonotao.controller.areaAluno.partidas;

import com.poliedro.jogodonotao.App;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;

import java.io.IOException;

public class ControleTelaCriarPartida {

    /**
     * Volta pra tela do painel do aluno.
     */
    @FXML
    void voltarProPainel(ActionEvent event) throws IOException {
        App.changeScene("area-aluno/painel-aluno", "Painel do aluno");
    }

}
