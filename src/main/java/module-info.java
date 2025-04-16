module com.poliedro.jogodonotao.jogodonotao {
    requires javafx.controls;
    requires javafx.fxml;

    requires org.controlsfx.controls;
    requires com.dlsc.formsfx;
    requires net.synedra.validatorfx;

    opens com.poliedro.jogodonotao.jogodonotao to javafx.fxml;
    exports com.poliedro.jogodonotao.jogodonotao;
}