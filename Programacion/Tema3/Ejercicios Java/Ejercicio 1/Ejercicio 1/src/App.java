import java.util.*;
public class App {
    public static void main(String[] args) throws Exception {
        int numero1;
        int numero2;
        Scanner sc = new Scanner(System.in);
        System.out.println("Dame el primer numero");
        numero1 = sc.nextInt();
        System.out.println("Dame el segundo numero");
        numero2 = sc.nextInt();
        System.out.println("Tus numeros son "+numero1+" y "+numero2);
    }
}
