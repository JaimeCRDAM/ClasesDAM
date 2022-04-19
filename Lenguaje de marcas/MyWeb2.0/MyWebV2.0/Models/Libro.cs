namespace MyWeb.Models{

    public class Libro{
        public  String titulo{ get; set; }
        public String descripcion { get; set; }
        public String rutaImg { get; set; }
        public String autor { get; set; }
        public Libro(String titulo, String descripcion, String rutaImg , String autor){
            this.titulo = titulo;
            this.descripcion = descripcion;
            this.rutaImg = rutaImg;
            this.autor = autor;
        }
    }
}