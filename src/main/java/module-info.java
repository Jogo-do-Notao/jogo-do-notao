module com.poliedro.jogodonotao {
    requires javafx.controls;
    requires javafx.fxml;
    requires java.sql;
    requires io.github.cdimascio.dotenv.java;
    requires spring.security.crypto;
    requires java.desktop;

    // Abre os pacotes necessários para o JavaFX
    opens com.poliedro.jogodonotao to javafx.fxml, javafx.base;
    opens com.poliedro.jogodonotao.usuario to javafx.base, javafx.fxml;
    opens com.poliedro.jogodonotao.controller to javafx.fxml;
    opens com.poliedro.jogodonotao.controller.areaAluno.partidas to javafx.fxml;
    // Exporta os pacotes necessários
    exports com.poliedro.jogodonotao;
    exports com.poliedro.jogodonotao.usuario;
    exports com.poliedro.jogodonotao.controller;
    exports com.poliedro.jogodonotao.agrupadores;
    exports com.poliedro.jogodonotao.controller.areaAluno.partidas to javafx.fxml;
}