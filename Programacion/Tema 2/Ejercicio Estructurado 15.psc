Algoritmo Menor_Mediano_Mayor
	Definir N1 Como Entero;
	Definir N2 Como Entero;
	Definir N3 Como Entero;
	
	
	Escribir "Escribe 3 numeros";
	
	Leer N1;
	Leer N2;
	Leer N3;
	
	si N1 > N2 y N2 > N3 Entonces
		Escribir N3, N2, N1;
		Escribir "primera";
	FinSi
	
	si N1 > N2 y N2 < N3 y N1 > N3 Entonces
		Escribir N2, N3, N1;
		Escribir "segunda";
	FinSi
	
	si N1 < N2 y N2 < N3 y N1 < N3 Entonces
		Escribir N1, N3, N2;
		Escribir "tercera";
	FinSi
	
	
FinAlgoritmo


