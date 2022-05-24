package com.gui;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.paint.Color;
import javafx.scene.text.Font;
import javafx.scene.text.Text;

public class mainCoso {


    @FXML
    private Button buttonThatChangesText;

    @FXML
    private Text texto;

    @FXML
    private Font x1;

    @FXML
    private Color x2;

    @FXML
    private Font x3;

    @FXML
    private Color x4;

    @FXML
    void cosas(ActionEvent event) {
        this.texto.setText("Hola");
        this.texto.getText();
    }
}
