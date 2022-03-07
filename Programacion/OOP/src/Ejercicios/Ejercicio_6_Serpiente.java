package Ejercicios;


import Ejercicios.SubClasesEjercicios.Serpiente.*;

public class Ejercicio_6_Serpiente {


    ClaseSerpiente[] nido = new ClaseSerpiente[20];

    public Ejercicio_6_Serpiente(){
        Hacercosas();

    }

    public void Hacercosas(){
        generarNido();
        LaVidaTete();
    }

    private void generarNido(){
        for (int i = 0; i < nido.length; i++) {
            nido[i] = new ClaseSerpiente();
        }
    }

    private void reconstruirNido(int nArray){
        ClaseSerpiente[] array = new ClaseSerpiente[nArray];
        int counter = 0;
        for (int i = 0; i < nArray+counter; i++) {
            if(nido[i] != null){
                array[i-counter] = nido[i]; 
            } else{
                counter++;
            }
        }
        nido = null;
        nido = new ClaseSerpiente[nArray];
        nido = array;
        array = null;
    }

    private void LaVidaTete(){
        int segundo = 0;
        while(nido.length > 0){
            System.out.println("Simulacion numero: "+segundo);
            for (int i = 0; i < nido.length; i++) {
                if (nido[i].CSerpiente.length <= 0){
                    System.out.println();
                }
                if (!nido[i].simulacion()){
                    nido[i] = null;
                    reconstruirNido(nido.length-1);
                }
            }
            try{
                Thread.sleep(1000);
                System.out.println("Numero de serpientes vivas: "+nido.length);
                segundo++;
            }catch(Exception e){
                System.out.println(e);
            }
        }
    }
}
