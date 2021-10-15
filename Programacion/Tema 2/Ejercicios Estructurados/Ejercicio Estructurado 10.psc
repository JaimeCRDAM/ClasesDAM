Algoritmo Mayor_Menor
	Definir N1 Como Entero;
	Definir T Como Caracter;
	Escribir "Escribe F para farenheit o C para celsius";
	Leer T;
	Escribir "Escribe la temperatura";
	Leer N1;
	
	Segun T Hacer
		"C":
			Escribir N2, " Grados celsius son ", (9/5*N1)+32, " farenheit";
		"F":
			Escribir N2, " Grados farelnheit son ", (N1-32)*(5/9), " celsius";
	FinSegun
	
FinAlgoritmo


