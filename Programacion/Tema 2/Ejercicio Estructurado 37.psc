Algoritmo AdivinaElNumero
	Definir A Como Caracter;
	A = "si";
	Mientras A == "si" Hacer
		Adivina();
		Escribir "¿Quieres volver a jugar? si/no";
	FinMientras
FinAlgoritmo

Funcion Adivina()
	Definir G, N Como Entero;
	N = aleatorio(1, 100);
	Escribir "Adivina el numero";
	para i desde 1 hasta 5 Hacer
		Leer G;
		si G == N Entonces
			Escribir "Era el numero ", N;
		FinSi
		si G > N Entonces
			Escribir "Te has pasado";
		SiNo
			Escribir "Te has quedado corto";
		FinSi
	FinPara
FinFuncion
	