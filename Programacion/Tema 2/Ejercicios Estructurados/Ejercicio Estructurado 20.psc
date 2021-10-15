Algoritmo Mes_Año
	Definir N1 Como Entero;
	Definir N2 Como Entero;
	
	Escribir "Escribe el mes (numero)";
	Leer N1;
	Escribir "Escribe el año";
	Leer N2;
	
	si N1 % 2 <> 0 o N1 == 8 o N1 == 12 Entonces
		si N2 % 2 == 0 o (N2 % 2 == 0 y N3 % 400 == 0) Entonces
			Escribir "El mes tiene 31 dias y es año bisiesto";
		SiNo
			Escribir "El mes tiene 31 dias y no es año bisiesto"
		FinSi
	SiNo
		si N2 % 2 == 0 o (N2 % 2 == 0 y N3 % 400 == 0) Entonces
			Escribir "El mes no tiene 31 dias y es año bisiesto";
		SiNo
			Escribir "El mes no tiene 31 dias y no es año bisiesto"
		FinSi
	FinSi
	
	
	
	
	
FinAlgoritmo
