Algoritmo Algo
	Definir N,N1 Como Entero;
	Escribir "Dame dos numero";
	Leer N,N1;
	Escribir "El numero combinatorio de ", N, " y ", N1, " es ", Combinatorio(N,N1);
FinAlgoritmo

Funcion return <- Factorial(a)
	si a > 1 Entonces
		return = a*Factorial(a-1);
	SiNo
		return = 1;
	FinSi
FinFuncion

Funcion return <- Combinatorio(a,b)
	return = Factorial(a)/(Factorial(b)*Factorial(a-b));
FinFuncion
