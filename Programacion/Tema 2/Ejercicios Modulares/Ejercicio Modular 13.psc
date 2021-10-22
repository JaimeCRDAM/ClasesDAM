Algoritmo Algo
	para i = 1 Hasta 100 Con Paso 1 Hacer
		si Primo(i) es Entero
			Escribir Primo(i);
		FinSi
	FinPara
FinAlgoritmo

Funcion return <- Primo(N)
	si N % 2 <> 0 y N%3 <> 0 y N%7 <> 0 y N%5 <> 0 o N == 5 o N == 3 o N == 7 Entonces
		return = N;
	FinSi
FinFuncion

