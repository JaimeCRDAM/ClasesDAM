package gui;
import java.awt.*;
import java.awt.event.*;
import javax.swing.*;
import java.util.*;
public class Innit {
    static JFrame frame1;
    static ArrayList<JPanel> pannel = new ArrayList<JPanel>();
    static ArrayList<JTextArea> text = new ArrayList<JTextArea>();
    static ArrayList<JButton> button = new ArrayList<JButton>();
    static JPanel ActivePanel;
    public static void main() {      
        frame1 = new JFrame("Mi primera GUI");
        frame1.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);      
        frame1.setSize(300, 300);
        JPanel ButtonPannel  = new JPanel();
        ButtonPannel.setLayout(new GridLayout(0, 5));
        frame1.add(ButtonPannel, BorderLayout.PAGE_END);
        for(int i = 0; i < 5; i++){
            int a = i;
            pannel.add(new JPanel());
            String text = String.format("Panel %d",i+1);
            pannel.get(i).add(new JTextArea(text));
            button.add(new JButton("Presionar"));
            button.get(i).addActionListener(new ActionListener() {
                @Override
                public void actionPerformed(ActionEvent e) {
                    ChangeVisible(ActivePanel, pannel.get(a));
                }
            });
            ButtonPannel.add(button.get(i));
            pannel.get(i).setVisible(false);
        }

        pannel.get(1).setVisible(true);
        ActivePanel = pannel.get(1);
        frame1.setVisible(true);

    }
    public static void ChangeVisible(JPanel a, JPanel b){
            a.setVisible(false);
            frame1.remove(a);
            frame1.add(b);
            ActivePanel = b;
            ActivePanel.setVisible(true);
    }
}