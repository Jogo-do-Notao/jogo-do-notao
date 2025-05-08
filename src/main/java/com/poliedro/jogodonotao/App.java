package com.poliedro.jogodonotao;

import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.stage.Stage;

import java.io.IOException;

public class App extends Application {
    @Override
    public void start(Stage stage) throws IOException {
        // Carregar arquivo FXML (Scene Builder) como scene
        FXMLLoader fxmlLoader = new FXMLLoader(App.class.getResource("views/tela-login.fxml"));
        Scene scene = new Scene(fxmlLoader.load());

        // Título da janela
        stage.setTitle("Jogo do Notão");

        // Definir tamanho mínimo da janela
        stage.setMinWidth(800);
        stage.setMinHeight(600);

        stage.setScene(scene); // Atribuir scene ao stage
        stage.show(); // exigir stage
    }

    public static void main(String[] args) {
        launch();
    }
}