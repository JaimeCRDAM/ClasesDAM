Algoritmo Area_Perimetro_Circulo
	Definir Radio Como Real;
	Escribir "Introduce el radio de un circulo";
	Leer Radio;
	si Radio no es Entero Entonces
		Escribir "Introduce los tres lados con numeros";
		Leer Radio;
	FinSi
	Definir Resultado1 Como Real;
	Definir Resultado2 Como Real;
	Resultado1 = pi*Radio^2;
	Resultado2 = pi*(2*Radio);
	Escribir "El area es ", Resultado1, " cm cuadrados";
	Escribir "El perimetro es ",Resultado2;
	
FinAlgoritmo
