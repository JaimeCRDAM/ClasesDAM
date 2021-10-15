Algoritmo Horario
	Definir N1 Como Caracter;
	Definir N2 Como Caracter;
	Definir N3 Como Entero;
	
	Escribir "Escribe tu horario";
	Leer N1;
	Escribir "Es domingo?";
	Leer N2;
	
	
	
	si N1 == "Diurno" Entonces
		N3 = 20*8
		si N2 == "Si" Entonces
			N3 = N3 + 10*8
		FinSi
	SiNo
		N3 = 35*8
		si N2 == "Si" Entonces
			N3 = N3 + 15*8
		FinSi
	FinSi
	
	Escribir "Tu sueldo va a ser ", N3, " euros";
	
	

	
	
	
	
FinAlgoritmo
