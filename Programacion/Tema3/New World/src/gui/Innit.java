package gui;
import java.awt.*;
import java.awt.event.*;
import javax.swing.*;
public class Innit {   
    public static void main() {      
        JFrame frame1 = new JFrame("Mi primera GUI");
        frame1.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);      
        frame1.setSize(300, 300);

        JPanel pannel1 = new JPanel();
        JTextArea text = new JTextArea("Me Cago en tu puta madre");
        pannel1.add(text);
        frame1.add(pannel1);



        JPanel ButtonPannel  = new JPanel();
        ButtonPannel .setLayout(new GridLayout(0, 5));
        frame1.add(ButtonPannel, BorderLayout.PAGE_END);

        JButton Button1 = new JButton("Presionar");
        ButtonPannel.add(Button1);

        JButton Button2= new JButton("Presionar");
        ButtonPannel.add(Button2);

        JButton Button3= new JButton("Presionar");
        ButtonPannel.add(Button3);

        JButton Button4= new JButton("Presionar");
        ButtonPannel.add(Button4);

        JButton Button5= new JButton("Presionar");
        ButtonPannel.add(Button5);
        
        frame1.setVisible(true);
    }
}