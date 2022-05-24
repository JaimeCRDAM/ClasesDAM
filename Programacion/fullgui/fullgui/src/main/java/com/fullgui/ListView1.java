package com.fullgui;


import java.net.URL;
import java.util.ResourceBundle;

import javafx.beans.property.ReadOnlyIntegerWrapper;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.TextField;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.input.MouseEvent;
import javafx.scene.layout.Pane;

public class ListView1 implements Initializable {

    @FXML
    private Pane BackGroundScene;

    @FXML
    private TableView<Persona> TableView1 = new TableView<>();

    @FXML
    private TableColumn<Object, Object> columna1;

    @FXML
    private TableColumn<Object, Object> columna2;
    TableColumn<Persona, ?> columna3 = new TableColumn<>("Edad");

    @FXML
    private TextField textApellido;

    @FXML
    private TextField textEdad;

    @FXML
    private TextField textNombre;

    @Override
    public void initialize(URL ak, ResourceBundle rb) {
        //Observable array of integers
        ObservableList<Persona> lista;
        lista = FXCollections.observableArrayList();
        lista.add(new Persona("Juan", "Perez", "23"));
        lista.add(new Persona("Pedro", "Perez", "23"));
        lista.add(new Persona("Juan", "Perez", "23"));

        TableView1.getItems().addAll(lista);
        columna1.setText("Nombre");
        columna2.setText("Apellido");
        TableView1.getColumns().add(columna3);
        rellenar();
    }

    private void rellenar(){
        columna1.setCellValueFactory(new PropertyValueFactory<>("nombre"));
        columna2.setCellValueFactory(new PropertyValueFactory<>("apellido"));
        columna3.setCellValueFactory(new PropertyValueFactory<>("edad"));
    }

    @FXML
    void addPerson(ActionEvent event) {
        TableView1.getItems().add(new Persona(textNombre.getText(), textApellido.getText(), textEdad.getText()));
    }

    @FXML
    void SetCosas(MouseEvent event) {
        Persona p = TableView1.getSelectionModel().getSelectedItem();
        textNombre.setText(p.getNombre());
        textApellido.setText(p.getApellido());
        textEdad.setText(p.getEdad());
    }

    @FXML
    void Actualizar(ActionEvent event) {
        Persona p = TableView1.getSelectionModel().getSelectedItem();
        p.setNombre(textNombre.getText());
        p.setApellido(textApellido.getText());
        p.setEdad(textEdad.getText());
        TableView1.refresh();
    }
}
