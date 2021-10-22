Algoritmo Cantidad
	Definir T,D Como Caracter;
	Escribir "Diurno o Nocturno (D o N)";
	Leer T;
	Escribir "¿Es domingo?";
	Leer D;
	
	Escribir "Cobrara ", Sueldo(T, D), " euros";
	
FinAlgoritmo

Funcion return <- Sueldo(H,D)
	si Minusculas(D) == "si" Entonces
		si H == "D" Entonces
			return = 30*8;
		SiNo
			return = 50*8;
		FinSi
	SiNo
		si H == "D" Entonces
			return = 20*8;
		SiNo
			return = 25*8;
		FinSi
	FinSi
	
FinFuncion
