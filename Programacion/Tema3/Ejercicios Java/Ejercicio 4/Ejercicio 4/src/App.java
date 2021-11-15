import java.util.*;
public class App {
    public static void main(String[] args) throws Exception {
        String nombre;
        int grados;
        float nuevosgrados;
        Scanner sc = new Scanner(System.in);
        System.out.println("¿Son grados centigrados o farenheit?");
        nombre = sc.nextLine();
        System.out.println("Cuantos grados");
        grados = sc.nextInt();
        nuevosgrados = (nombre.toLowerCase().equals("farenheit")) ? (grados-32)*5/9 : (nombre.toLowerCase().equals("celsius")) ? grados*9/5+32 : 0;
        nombre = (nombre.toLowerCase().equals("farenheit")) ? "Celsius" : (nombre.toLowerCase().equals("celsius")) ? "Farenheit" : "Que nombre has puesto, tonto" ;
        System.out.println("Se transforma en " +nuevosgrados +" grados "+ nombre);
    }
}
