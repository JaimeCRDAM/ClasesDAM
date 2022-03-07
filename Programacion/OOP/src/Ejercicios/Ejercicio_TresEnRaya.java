package Ejercicios;

import java.util.*;

public class Ejercicio_TresEnRaya {
    
    String[][] tablero = new String[3][3];
    String[] iconoDeJugador = {"X", "O"};

    boolean juegaElJugadorUno = false;
    boolean jugando = true;

    Scanner sc = new Scanner(System.in);

    public Ejercicio_TresEnRaya(){
        iniciarTablero(this.tablero);
        quienEmpieza();
        juego();
    }

    private void quienEmpieza(){
        double aleatorio = Math.random();
        if (aleatorio > 0.5) {
            juegaElJugadorUno = false;
        } else {
            juegaElJugadorUno = true;
        }
    }

    private void juego(){
        System.out.println("Empieza el jugador "+booleanJugadorToJugador());
        while(jugando){
            System.out.println("Es el turno del jugador "+booleanJugadorToJugador());
            System.out.println("Elija una casilla, formato A1, C2, etc");
            String input = sc.nextLine();
    
            if(input.length() > 2 || input.length() < 2 || (int)(input.toCharArray()[0]) > 68 || (int)(input.toCharArray()[0]) < 65){
                System.out.println("Escribe bien la casilla");
            } else{
                escribirLaCasilla(input, juegaElJugadorUno);
                juegaElJugadorUno = !juegaElJugadorUno;
            }

        }
    }

    private void escribirLaCasilla(String input, boolean jugador){
        int posY = ((int)input.toCharArray()[0])-65;
        int posX = Character.getNumericValue(input.toCharArray()[1])-1;

        if (jugador) {
            tablero[posY][posX] = "X ";
        } else {
            tablero[posY][posX] = "O ";
        }
        dibujarTablero(this.tablero);
        comprobarGanador(tablero, jugador);
    }

    private void iniciarTablero(String[][] tablero){
        for (int i = 0; i < tablero.length; i++) {
            for (int j = 0; j < tablero[0].length; j++) {
                tablero[i][j] = " ";
            }
        }
    }

    private void dibujarTablero(String[][] tablero){
        System.out.print(" ");
        for (var i = 0; i < tablero.length; i++) {
            System.out.print(" "+(i+1));
        }
        System.out.println();
        for (var i = 0; i < tablero.length; i++) {
            System.out.print((Character.toString(65+i)+" "));
            for (var j = 0; j < tablero[i].length; j++) {
                if (tablero[i][j] == ""){
                    System.out.print("  ");
                }
                System.out.print(tablero[i][j]);
            }
            System.out.println();
        }
    }

    private String booleanJugadorToJugador(){
        if (juegaElJugadorUno) {
            return "Jugador uno";
        } else {
            return "Jugador dos";
        }
    }

    private void comprobarGanador(String[][] tablero, boolean jugador){
        int numero = 0;
        int[][] coordenadas = new int[3][2];
        int coorIndex = 0;
        if (jugador) {
            for (int i = 0; i < tablero.length; i++) {
                for (int j = 0; j < tablero[0].length; j++) {
                    if(tablero[i][j] == "X " && comprobarAlrededor(tablero, i, j, "X ", coordenadas, coorIndex)){
                        numero++;
                        coorIndex++;
                    }
                }
            }
        } else {
            for (int i = 0; i < tablero.length; i++) {
                for (int j = 0; j < tablero[0].length; j++) {
                    if(tablero[i][j] == "O " && comprobarAlrededor(tablero, i, j, "O ", coordenadas, coorIndex)){
                        numero++;
                        coorIndex++;
                    }
                }
            }
        }

        if(numero >= 3){
            System.out.println("Jugador "+booleanJugadorToJugador()+" gana!");
            System.out.println("¿Quieres jugar otra vez? S/N");
            String jugar = sc.nextLine();
            if (jugar.equals("S")) return;
            jugando = false;
        }

    }

    private boolean comprobarAlrededor(String[][] tablero, int y, int x, String simbolo, int[][] coordenadas, int coorIndex){
        if ( coorIndex < coordenadas.length && coordenadas[coorIndex][0] != 0) return false;
        coordenadas[coorIndex][0] = y;
        coordenadas[coorIndex][1] = x;
        if(y+1 < tablero.length && tablero[y+1][x].equals(simbolo)){
            return true;
        }
        if(x+1 < tablero.length && tablero[y][x+1].equals(simbolo)){
            return true;
        }
        if(x-1 > 0 && tablero[y][x-1].equals(simbolo)){
            return true;
        }
        if(y-1 > 0 && tablero[y-1][x].equals(simbolo)){
            return true;
        }
        if(x-1 > 0 && y-1 > 0 && tablero[y-1][x-1].equals(simbolo)){
            return true;
        }
        if(x+1 < tablero.length && y+1 < tablero.length && tablero[y+1][x+1].equals(simbolo)){
            return true;
        }
        if(x-1 > 0 && y+1 < tablero.length && tablero[y+1][x-1].equals(simbolo)){
            return true;
        }
        if(x+1 < tablero.length && y-1 > 0 && tablero[y-1][x+1].equals(simbolo)){
            return true;
        }

        return false;
    }
}
