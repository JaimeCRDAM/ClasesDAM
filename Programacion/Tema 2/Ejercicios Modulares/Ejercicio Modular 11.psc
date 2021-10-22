Algoritmo Algo
	Definir N Como Entero;
	Escribir "Dame un numero";
	Leer N;
	Escribir "El factorial de ", N, " es ", Factorial(N);
FinAlgoritmo

Funcion return <- Factorial(N)
	si N > 1 Entonces
		return = N*Factorial(N-1);
	SiNo
		return = 1;
	FinSi
FinFuncion
	