Algoritmo Cantidad
	Definir N Como Entero;
	Escribir "Dame un numero";
	Leer N;
	
	Escribir N, " Tiene ", NumeroDeCaracteres(N), " numeros";
	
FinAlgoritmo

Funcion return <- NumeroDeCaracteres(N)
	si N > 0 Entonces
		return = Longitud(ConvertirATexto(N));
	SiNo
		return = Longitud(ConvertirATexto(N))-1;
	FinSi
	
FinFuncion
