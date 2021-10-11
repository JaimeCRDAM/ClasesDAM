Algoritmo Media_Cualquiera
	Definir M Como caracter;
	Definir MN Como Entero;
	Definir N Como Entero;
	Definir N2 Como Entero;
	Escribir "¿Que modo quieres jugar? [Indefinido: I o Definido: D";
	Leer M;
	N2 = 0;
	
	si M == "D" Entonces
		Escribir "¿Con cuantos numeros quieres jugar?";
		Leer MN;
		Para A desde 1 Hasta MN Con Paso 1
			Leer N;
			si N > N2 Entonces
				N2 = N;
			FinSi
		FinPara
		Escribir N2, " Ha sido tu numero mas alto";
	FinSi
	si M == "I" Entonces
		Mientras Verdadero Hacer
			Leer N;
			si N > N2 Entonces
				N2 = N;
			FinSi
		FinMientras
		Escribir N2, " Ha sido tu numero mas alto";
	FinSi
	
FinAlgoritmo
