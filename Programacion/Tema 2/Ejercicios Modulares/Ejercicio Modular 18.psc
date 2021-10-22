Algoritmo Segundo_Grado
	Definir N1 Como Real;
	
	Escribir "Dame un precio";
	Leer N1;
	Monedas(N1);
	
	
FinAlgoritmo

Funcion Monedas(a)
	Definir E2,E1,C50,C20,C10,C5,C2,C1 Como Entero;
	Mientras a > 0 Hacer
		si a > 2 Entonces
			a = a-2;
			E2 = E2+1;
		FinSi
		si a > 1 y a < 2 Entonces
			a = a-1;
			E1 = E1+1;
		FinSi
		si a > 0.5 y a < 1 Entonces
			a = a-0.5;
			C50 = C50+1;
		FinSi
		si a > 0.2 y a < 0.5 Entonces
			a = a-0.2;
			C20 = C20+1;
		FinSi
		si a > 0.1 y a < 0.2 Entonces
			a = a-0.1;
			C10 = C10+1;
		FinSi
		si a > 0.05 y a < 0.1 Entonces
			a = a-.1;
			C5 = C5+1;
		FinSi
		si a > 0.02 y a < 0.05 Entonces
			a = a-.1;
			C2 = C2+1;
		FinSi
		si a > 0.01 y a < 0.02 Entonces
			a = a-.1;
			C1 = C1+1;
		FinSi
	FinMientras
	Escribir "Las monedas necesarias en orden son ", E2," ",E1," ",C50," ",C20," ",C10," ",C5," ",C2," ",C1;
FinFuncion
