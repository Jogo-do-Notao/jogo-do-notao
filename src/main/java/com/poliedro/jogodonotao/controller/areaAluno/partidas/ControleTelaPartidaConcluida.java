package com.poliedro.jogodonotao.controller.areaAluno.partidas;

import com.poliedro.jogodonotao.App;
import com.poliedro.jogodonotao.jogo.Partida;
import com.poliedro.jogodonotao.usuario.Aluno;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.text.Text;

import java.io.IOException;

public class ControleTelaPartidaConcluida {

    /**
     * Texto para a(s) matéria(s)
     */
    @FXML
    private Text textMateria;
    /**
     * Texto para a pontuaação final da partida
     */
    @FXML
    private Text textPontuacaoPartida;
    /**
     * Texto para a pontuação final
     */
    @FXML
    private Text textPontuacaoTotal;
    /**
     * Texto para o progresso
     */
    @FXML
    private Text textProgresso;

    /**
     * Metodo para chamar a scene de partida concluída.
     */
    @FXML
    void voltarMenuAluno(ActionEvent event) throws IOException {
        App.changeScene("area-aluno/painel-aluno", "Tela do Painel do Aluno");
    }
    public void initialize() {
        textPontuacaoTotal.setText("Pontuação: " + Aluno.getSessaoAtiva().getPontuacaoFormatada());
        textPontuacaoPartida.setText("Pontuação da Partida: " + );
        textMateria.setText("Matéria(s): " +  );
        textProgresso.setText("Progresso: 15");
    }


}
