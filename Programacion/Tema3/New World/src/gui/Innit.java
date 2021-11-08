package gui;
import javax.swing.*;
public class Innit {   
    public static void main() {      
        JFrame frame = new JFrame("Mi primera GUI");      
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);      
        frame.setSize(300, 300);      
        JButton Button = new JButton("Presionar");      
        frame.getContentPane().add(Button); // Agrega el botón al panel de contenido del marco     
        frame.setVisible(true);   
    }
}