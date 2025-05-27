module com.poliedro.jogodonotao.jogodonotao {
    requires javafx.controls;
    requires javafx.fxml;

    requires org.controlsfx.controls;
    requires com.dlsc.formsfx;
    requires net.synedra.validatorfx;
    requires java.desktop;
    requires java.sql;
    requires io.github.cdimascio.dotenv.java;
    requires spring.security.crypto;

    opens com.poliedro.jogodonotao to javafx.fxml;
    exports com.poliedro.jogodonotao;
    exports com.poliedro.jogodonotao.controller;
    opens com.poliedro.jogodonotao.controller to javafx.fxml;
    exports com.poliedro.jogodonotao.controller.areaAluno.partidas;
    opens com.poliedro.jogodonotao.controller.areaAluno.partidas to javafx.fxml;
    opens com.poliedro.jogodonotao.agrupadores to javafx.base;


}