package Ejercicios;
import java.util.*;
public class Ejercicio_Buscaminas {
    String[][] tableroAMostrar;
    String[][] tableroOculto;
    boolean jugando = true;
    int cantidadMinas = 10;
    int minasEncontradas = 0;
        
    public Ejercicio_Buscaminas(){
        GenerarTablero();
        InputJugador();
        //DespejarTest(tableroOculto);
        //EscribirTablero(tableroOculto);
    }

    private void GenerarTablero(){
        tableroAMostrar = new String[10][10];
        tableroOculto = new String[10][10];

        for (var i = 0; i < tableroAMostrar.length; i++) {
            for (var j = 0; j < tableroAMostrar[i].length; j++) {
                tableroAMostrar[i][j] = "? ";
                tableroOculto[i][j] = "";
            }
        }
        ColocarMinas(tableroOculto, 10);
        ColocaIndicadores(tableroOculto);
    }

    private void ColocarMinas(String[][] tablero, int cantidad){
        for (var i = 0; i < cantidad; i++) {
            int x = (int)(Math.random()*tablero.length);
            int y = (int)(Math.random()*tablero.length);
            tablero[y][x] = "X ";
        }
    }

    private void ColocaIndicadores(String[][] tablero){
        for (var i = 0; i < tablero.length; i++) {
            for (var j = 0; j < tablero[i].length; j++) {
                if (tablero[i][j] == "X "){
                    if ((i-1) >= 0){
                        if (tablero[i-1][j] == ""){
                            tablero[i-1][j] = "1 ";
                        } else if(tablero[i-1][j] != "" && tablero[i-1][j] != "X "){
                            int p = Integer.parseInt(tablero[i-1][j].split("")[0])+1;
                            tablero[i-1][j] = Integer.toString(p)+" ";
                        }
                    }
                    if ((i+1) <= tablero.length-1){
                        if (tablero[i+1][j] == ""){
                            tablero[i+1][j] = "1 ";
                        } else if(tablero[i+1][j] != "" && tablero[i+1][j] != "X "){
                            int p = Integer.parseInt(tablero[i+1][j].split("")[0])+1;
                            tablero[i+1][j] = Integer.toString(p)+" ";
                        }
                    }
                    if ((j-1) >= 0){
                        if (tablero[i][j-1] == ""){
                            tablero[i][j-1] = "1 ";
                        } else if(tablero[i][j-1] != "" && tablero[i][j-1] != "X "){
                            int p = Integer.parseInt(tablero[i][j-1].split("")[0])+1;
                            tablero[i][j-1] = Integer.toString(p)+" ";
                        }
                    }
                    if ((j+1) <= tablero.length-1){
                        if (tablero[i][j+1] == ""){
                            tablero[i][j+1] = "1 ";
                        } else if(tablero[i][j+1] != "" && tablero[i][j+1] != "X "){
                            int p = Integer.parseInt(tablero[i][j+1].split("")[0])+1;
                            tablero[i][j+1] = Integer.toString(p)+" ";
                        }
                    }
                    if ((i+1) <= tablero.length-1 && (j+1) <= tablero.length-1){
                        if (tablero[i+1][j+1] == ""){
                            tablero[i+1][j+1] = "1 ";
                        } else if(tablero[i+1][j+1] != "" && tablero[i+1][j+1] != "X "){
                            int p = Integer.parseInt(tablero[i+1][j+1].split("")[0])+1;
                            tablero[i+1][j+1] = Integer.toString(p)+" ";
                        }
                    }
                    if ((i-1) >=0 && (j-1) >=0){
                        if (tablero[i-1][j-1] == ""){
                            tablero[i-1][j-1] = "1 ";
                        } else if(tablero[i-1][j-1] != "" && tablero[i-1][j-1] != "X "){
                            int p = Integer.parseInt(tablero[i-1][j-1].split("")[0])+1;
                            tablero[i-1][j-1] = Integer.toString(p)+" ";
                        }
                    }
                    if ((i+1) < tablero.length && (j-1) >=0){
                        if (tablero[i+1][j-1] == ""){
                            tablero[i+1][j-1] = "1 ";
                        } else if(tablero[i+1][j-1] != "" && tablero[i+1][j-1] != "X "){
                            int p = Integer.parseInt(tablero[i+1][j-1].split("")[0])+1;
                            tablero[i+1][j-1] = Integer.toString(p)+" ";
                        }
                    }
                    if ((i-1) >=0 && (j+1) < tablero.length){
                        if (tablero[i-1][j+1] == ""){
                            tablero[i-1][j+1] = "1 ";
                        } else if(tablero[i-1][j+1] != "" && tablero[i-1][j+1] != "X "){
                            int p = Integer.parseInt(tablero[i-1][j+1].split("")[0])+1;
                            tablero[i-1][j+1] = Integer.toString(p)+" ";
                        }
                    }
                }
            }
        }
    }

    private void DespejarVacios(int y, int x){
        if ((x >= 0 && x < tableroOculto.length) && (y >= 0 && y < tableroOculto.length) && tableroOculto[y][x] == ""){
            if( tableroAMostrar[y][x] != "  "){
                tableroAMostrar[y][x] = "  ";
                DespejarVacios(y, x+1);
                DespejarVacios(y+1, x);
                DespejarVacios(y, x-1);
                DespejarVacios(y-1, x);
            }

        }else if((x >= 0 && x < tableroOculto.length) && (y >= 0 && y < tableroOculto.length) && tableroOculto[y][x] != "" && tableroAMostrar[y][x] != "  "){
            tableroAMostrar[y][x] = tableroOculto[y][x];
        }
    } 

    private void EscribirTablero(String[][] tablero){
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

    private void HacerLaJugada(int y, int x, String inputMina){
        if (inputMina.equals("0")){
            tableroAMostrar[y][x] = "M ";
            EscribirTablero(tableroAMostrar);
            ComprobarGanador();
            return;
        }
        if (tableroOculto[y][x] == "X "){
            tableroAMostrar[y][x] = "X ";
            EscribirTablero(tableroAMostrar);
            System.out.println("Has perdido!");
            jugando = false;
        }else if(tableroOculto[y][x] == ""){
            DespejarVacios(y, x);
            EscribirTablero(tableroAMostrar);
        }else{
            tableroAMostrar[y][x] = tableroOculto[y][x];
            EscribirTablero(tableroAMostrar);
        }
    }

    private void InputJugador(){
        Scanner sc = new Scanner(System.in);
        String inputMina, intputPos;
        int pos1, pos2;
        while(jugando){
            System.out.println("Escribe 0 para marcar mina, 1 para hacer click en la casilla");
            inputMina = sc.nextLine();
            if(!inputMina.equals("0") && !inputMina.equals("1")){
                System.out.println("Has escrito mal el tipo");
                continue;
            }
            System.out.println("Escribe la casilla con este formato, A10/J5/E9");
            intputPos = sc.nextLine();
            if (intputPos.length() > 3 || intputPos.length() < 2){
                System.out.println("Has escrito mal la casilla");
            }
            if(intputPos.length() == 2){
                if((int)intputPos.toCharArray()[0] > 74 || (int)intputPos.toCharArray()[0] < 65 ){
                    System.out.println("Has escrito mal la casilla");
                    continue;
                }
                pos1 = ((int)intputPos.toCharArray()[0])-65;
                pos2 = Integer.parseInt(intputPos.split("")[1]);

                HacerLaJugada(pos1, pos2-1, inputMina);

            }else if(intputPos.length() == 3){
                if((int)intputPos.toCharArray()[0] > 74 || (int)intputPos.toCharArray()[0] < 65 ){
                    System.out.println("Has escrito mal la casilla");
                    continue;
                }
                pos1 = ((int)intputPos.toCharArray()[0])-65;
                pos2 = Integer.parseInt(intputPos.split("")[1]+intputPos.split("")[2]);

                HacerLaJugada(pos1, pos2-1, inputMina);
            }
        }
        sc.close();
    }

    private void ComprobarGanador(){
        for (var i = 0; i < tableroAMostrar.length; i++) {
            for (var j = 0; j < tableroAMostrar[i].length; j++) {
                if(tableroAMostrar[i][j].equals("M ") && tableroOculto[i][j].equals("X")){
                    minasEncontradas++;
                }
            }
        }
        if (minasEncontradas == cantidadMinas){
            System.out.println("Has ganado!");
            jugando = false;
        }
    }

    /*private void DespejarTest(String[][] tablero){
        for (var i = 0; i < tablero.length; i++) {
            for (var j = 0; j < tablero[i].length; j++) {
                if (tablero[i][j] == ""){
                    DespejarVacios(i, j);
                    EscribirTablero(tableroAMostrar);
                    break;
                }
            }
            break;
        }
    }*/
}