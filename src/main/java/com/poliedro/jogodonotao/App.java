package com.poliedro.jogodonotao;

import com.poliedro.jogodonotao.usuario.Aluno;
import com.poliedro.jogodonotao.usuario.Professor;
import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.stage.Stage;
import javafx.scene.image.Image;

import java.io.IOException;
import java.util.Objects;

public class App extends Application {
    /**
     * Referência estática ao stage principal da aplicação.
     */
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

        // Definir ícone da janela
        Image icon = new Image( // Carregar png dos recursos
                Objects.requireNonNull(
                        App.class.getResourceAsStream("/com/poliedro/jogodonotao/images/logo-poliedro/poliedro-favicon.png")
                )
        );
        stage.getIcons().add(icon);
        // URL: https://www.colegiopoliedro.com.br/app/uploads/2021/03/cropped-favicon-new-32x32.png

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
     * @param nextScene Nome da pasta (se houver) e arquivo FXML do scene de destino dentro da pasta {@code views/} (sem a extensão {@code .fxml}).
     * @param titulo    Título da janela do próximo scene.
     */
    public static void changeScene(String nextScene, String titulo) throws IOException {
        // Obter o stage atual
        Stage stage = (Stage) mainStage.getScene().getWindow();
        // Salvar dimensões atuais da janela
        double width = stage.getWidth();
        double height = stage.getHeight();

        // Obter FXML do scene de destino
        FXMLLoader nextViewFXML = new FXMLLoader(
                App.class.getResource("views/" + nextScene + ".fxml")
        );
        // Criar scene a partir do FXML
        Scene nextView = new Scene(nextViewFXML.load());

        // Mudar título da janela
        String tituloString = "Jogo do Notão"; // título padrão
        // Adicionar nome do usuário com sessão ativa
        if (Aluno.getSessaoAtiva() != null) {
            tituloString += " | " + Aluno.getSessaoAtiva().getNome();
        } else if (Professor.getSessaoAtiva() != null) {
            tituloString += " | " + Professor.getSessaoAtiva().getNome();
        }
        if (!titulo.isEmpty()) {
            tituloString += " | " + titulo; // Adicionar título da nova tela
        }
        stage.setTitle(tituloString); // aplicar novo título

        // Aplicar novo scene no stage
        stage.setScene(nextView);
        // Manter dimensões da janela
        stage.setWidth(width);
        stage.setHeight(height);
    }
}