Algoritmo Suma_Impares
	Definir N1 Como Entero;
	Definir N2 Como Entero;
	Definir Sum Como Entero;
	
	Escribir "Escribe dos numeros, el primero menor al segundo, gracias :)";
	
	Leer N1
	Leer N2
	
	Si N1 % 2 == 0 Entonces
		N1 = N1 + 1
		Mientras N1 < N2 Hacer
			Sum = Sum + N1
			N1 = N1 + 2
			Escribir Sum ;
		Fin Mientras
	SiNo
		Mientras N1 < N2 Hacer
			Sum = Sum + N1
			N1 = N1 + 2
			Escribir Sum ;
		Fin Mientras
	FinSi
	Escribir Sum ;
	
FinAlgoritmo


