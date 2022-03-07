package Ejercicios;

public class Ejercicio_3_Coche {
    private String marca;
    public String getMarca(){return marca;}
    public void setMarca(String marca){ this.marca = marca;};

    private String modelo;
    public String getModelo(){return modelo;}
    public void setModelo(String modelo){ this.modelo = modelo;};

    private String color;
    public String getColor(){return color;}
    public void setColor(String color){ this.color = color;};

    private String matricula;
    public String getMatricula(){return matricula;}
    public void setMatricula(String matricula){ this.matricula = matricula;};

    private boolean motorEncendido;
    private long tiempo;
    private long tiempoActual;
    private int marchaActual;
    private int subirMarcha;
    private int bajarMarcha;

    public Ejercicio_3_Coche(){
        motorEncendido = false;
        System.out.println("Hola");
    }

    private void arrancar(){
        motorEncendido = true;
    }

    private void acelerarHasta(int maxMarcha, long tiempo){
        try {
            while(marchaActual<maxMarcha){
                marchaActual++;
                Thread.sleep(1000);
            }
            this.tiempo = tiempo;
            tiempoActual = System.currentTimeMillis();
        } catch (Exception e) {
        }
    }

    private boolean esperar(){
        while ((tiempoActual+tiempo) > System.currentTimeMillis()){
            return false;
        }
        return true;
    }

    private void desacelerarHastaStop(){
        try {
            while(marchaActual>0){
                marchaActual--;
                Thread.sleep(1000);
            }
        } catch (Exception e) {
        }
    }

    private void puntoMuerto(){
        motorEncendido = false;
        marchaActual = 0;
    }
    
}
