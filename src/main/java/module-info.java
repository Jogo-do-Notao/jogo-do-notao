module com.poliedro.jogodonotao.jogodonotao {
    requires javafx.controls;
    requires javafx.fxml;

    requires org.controlsfx.controls;
    requires com.dlsc.formsfx;
    requires net.synedra.validatorfx;
    requires java.desktop;

    opens com.poliedro.jogodonotao to javafx.fxml;
    exports com.poliedro.jogodonotao;
    exports com.poliedro.jogodonotao.controller;
    opens com.poliedro.jogodonotao.controller to javafx.fxml;
}