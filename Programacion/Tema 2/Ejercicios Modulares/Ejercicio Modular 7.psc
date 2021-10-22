Algoritmo sin_titulo
	Definir N1 Como Entero;
	Definir T Como Caracter;
	Escribir "Escribe F para farenheit o C para celsius";
	Leer T;
	Escribir "Escribe la temperatura";
	Leer N1;
	grados(N1, T);
FinAlgoritmo

Funcion grados(N, T)
	Segun T Hacer
		"C":
			Escribir N2, " Grados celsius son ", (9/5*N)+32, " farenheit";
		"F":
			Escribir N2, " Grados farelnheit son ", (N-32)*(5/9), " celsius";
	FinSegun
FinFuncion
	