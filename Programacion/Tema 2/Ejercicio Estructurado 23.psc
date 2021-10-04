Algoritmo Segundo_Grado
	Definir N Como Entero;
	Escribir "Escribe un numero";
	Leer N;
	
	Escribir "El factorial de ",N," es ", Factorial(N);
FinAlgoritmo

Funcion Return <- Factorial ( N )
	si N > 1 Entonces
		Return = N * Factorial(N-1);
	SiNo
		Return = 1;
	FinSi
Fin Funcion
