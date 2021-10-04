Algoritmo EJERCICIO35_PARA
	
	random, random2, cont2 es entero
	Para cont = 1 hasta 15 Con Paso 1
		random = aleatorio(1,3)
		random2= aleatorio(1,3)
		si random == 3 y random2 == random Entonces
			Escribir "x", " Acertado";
			cont2 = cont2 + 1
		FinSi
		si random == random2 Entonces
			Escribir random, " has acertado";
			cont2 = cont2 + 1
		FinSi
	FinPara
	
	Escribir "Has acertado ", cont2, " veces";
	
FinAlgoritmo
