Algoritmo Media_Cualquiera
	Definir N Como Entero;
	Definir N2 Como Entero;
	Definir N3 Como Entero;
	Escribir "Se va a calcular la media de todos los numeros hasta que introduzcas uno negativo";
	N = 0;
	Mientras N >= 0 Hacer
		Leer N;
		si N > 0 Entonces
			N2 = N2 + N;
			N3 = N3 + 1;
		FinSi
	FinMientras

	Escribir N2/N3;
	
FinAlgoritmo
