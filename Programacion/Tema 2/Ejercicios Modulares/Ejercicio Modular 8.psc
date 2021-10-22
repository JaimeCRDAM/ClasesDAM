Algoritmo Comprobar
	Definir N, N1, N2 Como Entero;
	Escribir "Dame tres numeros";
	Leer N, N1, N2;
	
	si Mayorque(N, N1) Entonces
		si Mayorque(N1, N2) Entonces
			Escribir "Estan ordenados";
		SiNo
			Escribir "No estan ordenados";
		FinSi
	SiNo
		Escribir "No estan ordenados";
	FinSi
	
FinAlgoritmo

Funcion return <- MayorQue(a, b)
	return = a > b;
FinFuncion
	