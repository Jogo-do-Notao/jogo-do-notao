package com.poliedro.jogodonotao;

import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.stage.Stage;

import java.io.IOException;

public class App extends Application {
    /** Referência estática ao stage principal da aplicação. */
    private static Stage mainStage;

    @Override
    public void start(Stage stage) throws IOException {
        // Armazenar stage principal
        mainStage = stage;
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

    /**
     * Método para redirecionar o usuário para o painel do aluno ou painel do professor após a autenticação.
     *
     * @param nextScene Nome do arquivo FXML do painel do aluno ou professor (sem a extensão {@code .fxml}).
     * @param titulo Título da janela do próximo scene.
     */
    public static void changeScene(String nextScene, String titulo) throws IOException {
        // Obter o stage atual
        Stage stage = (Stage) mainStage.getScene().getWindow();
        // Obter FXML do scene de destino
        FXMLLoader nextViewFXML = new FXMLLoader(
                App.class.getResource("views/" + nextScene + ".fxml")
        );
        // Criar scene a partir do FXML
        Scene nextView = new Scene(nextViewFXML.load());
        // Mudar título da janela
        stage.setTitle("Jogo do Notão | " + titulo);
        // Aplicar novo scene no stage
        stage.setScene(nextView);
    }
}