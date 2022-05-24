module com.fullgui {
    requires javafx.controls;
    requires javafx.fxml;

    opens com.fullgui to javafx.fxml;
    exports com.fullgui;
}
