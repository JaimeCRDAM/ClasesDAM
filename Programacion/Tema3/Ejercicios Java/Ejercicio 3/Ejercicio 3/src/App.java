import java.util.*;
public class App {
    public static void main(String[] args) throws Exception {
        int numero;
        Scanner sc = new Scanner(System.in);
        System.out.println("Dime un numero entero");
        numero = sc.nextInt();
        System.out.println("El doble de tu numero es "+numero*2+" y el triple es "+numero*3);
    }
}
