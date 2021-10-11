Algoritmo Consola
	Definir N1 Como Entero;
	Definir N2 Como Entero;
	Repetir
		Leer N1;
		N2 = N1;
		si N1 > 0 Entonces
			N2 = RaizCuadrada(N1);
		SiNo
			Escribir "Es negativo, no se puede hacer la raiz, vuelve a escribir el numero";
		FinSi
	Hasta Que N1 <> N2

	
FinAlgoritmo

SubProceso res <- RaizCuadrada(n) 
	Escribir "La raiz cuadrada es ", raiz(n);
    res <- raiz(n);
FinSubProceso

	