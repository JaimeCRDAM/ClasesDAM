Algoritmo UnoAlCien
	Definir N Como Entero;
	N = 1;
	
	Mientras N <= 100 Hacer
		si N % 2 <> 0 y N%3 <> 0 y N%7 <> 0 y N%5 <> 0 o N == 5 o N == 3 Entonces
			Escribir N;
		FinSi
		N = N+1;
	FinMientras
	
FinAlgoritmo
