package Ejercicios.SubClasesEjercicios.Serpiente;

import java.util.ArrayList;

import lombok.Data;


@Data
public class ClaseSerpiente {
    String[] colores = new String[]{"r", "v", "g"};
    public String[] CSerpiente;
    int edad;

    public ClaseSerpiente(){
        nacer();
    }


    private String asignarColor(){
        String colorFinal;
        
        colorFinal = colores[(int)(Math.random()*(2-0)+0)];

        return colorFinal;
    }

    private void reconstruirArray(int oArray, int nArray){
        String[] array = new String[nArray];
        for (int i = 0; i < oArray; i++) {
            array[i] = CSerpiente[i]; 
        }
        CSerpiente = null;
        CSerpiente = new String[array.length];
        CSerpiente = array;
        array = null;
        ArrayList<Integer> lista = new ArrayList<>();
        
    }

    private void reconstruirArray(int nArray){
        if (nArray <= 0) {
            CSerpiente = new String[0]; 
            return;
        }
        String[] array = new String[nArray];
        for (int i = 0; i < nArray; i++) {
            array[i] = CSerpiente[i]; 
        }
        CSerpiente = null;
        CSerpiente = new String[array.length];
        CSerpiente = array;
        array = null;
    }

    public boolean simulacion(){
        if (CSerpiente.length <= 0){
            System.out.println();
        }
        if (edad > 10) mayor(); else joven();
        if (CSerpiente.length <= 0){
            System.out.println();
            System.out.println("Ha muerto una serpiente");
            return false;
        }
        return true;
    }

    private void joven(){
        boolean crecera = Math.random()<0.8;
        boolean mudara = Math.random()<0.2;
        boolean mangostada = Math.random()<0.05;

        if (crecera){
            reconstruirArray(CSerpiente.length, CSerpiente.length+1);
            CSerpiente[CSerpiente.length-1] = asignarColor();
        } else{
            if (CSerpiente.length <= 0){
                System.out.println();
            }
        }

        if (mudara){
            mudar(CSerpiente);
        } else{
            if (CSerpiente.length <= 0){
                System.out.println();
            }
        }

        if (mangostada){
            mangosta();
        } else{
            if (CSerpiente.length <= 0){
                System.out.println();
            }
        }
        edad++;

    }

    private void mayor(){
        boolean decrecera = Math.random()<0.9;
        boolean mudara = Math.random()<0.1;
        boolean mangostada = Math.random()<0.05;

        if (decrecera){
            reconstruirArray(CSerpiente.length-1);
            if (CSerpiente.length > 0){
                CSerpiente[CSerpiente.length-1] = asignarColor();
            }
        }
        if (mudara){
            mudar(CSerpiente);
        }

        if (mangostada){
            mangosta();
        } else{
            if (CSerpiente.length <= 0){
                System.out.println();
            }
        }

        edad++;
    }

    private void mudar(String[] array){
        for (int i = 0; i < array.length; i++) {
            array[i] = asignarColor();
        }
    }

    private void nacer(){
        edad = 1;
        CSerpiente = new String[edad];
        CSerpiente[0] = asignarColor();
    }

    private void mangosta(){
        CSerpiente = new String[0];
        System.out.println("Una serpiente ha sido mangostada");
    }
}