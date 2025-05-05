package com.poliedro.jogodonotao;

import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.stage.Stage;

import java.io.IOException;

public class App extends Application {
    @Override
    public void start(Stage stage) throws IOException {
        FXMLLoader fxmlLoader = new FXMLLoader(App.class.getResource("views/tela-login.fxml")); // carregar o arquivo FXML (Scene Builder)
        Scene scene = new Scene(fxmlLoader.load());
        stage.setTitle("Jogo do Notão"); // Nome da janela
        stage.setScene(scene);
        stage.show();
    }

    public static void main(String[] args) {
        launch();
    }
}