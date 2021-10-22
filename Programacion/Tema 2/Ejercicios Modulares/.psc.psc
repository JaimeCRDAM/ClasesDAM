Algoritmo Algo
	Definir N,N1 Como Entero;
	Escribir "Dame dos numeros, el primero mayor al segundo";
	Leer N,N1;
	Division(N,N1);
FinAlgoritmo

Funcion Division(N,D)
	Definir i Como Entero;
	Mientras N > D Hacer
		N = N - D;
		i = i+1;
	FinMientras
	Escribir "El cocciente es ", i, " y el resto ", N;
FinFuncion