Algoritmo Coccientes_Y_Restas
	Definir N1 Como Real;
	Definir N2 Como Real;
	
	Escribir "Escribe 2 numeros, el primero mayor que el segundo, gracias";
	
	Leer N1;
	Leer N2;
	
	Repetir
		Escribir "El cocciente es ", trunc(N1 / N2);
		Escribir "El resto es ", N1-(trunc(N1 / N2) * N2);
		N1 = trunc(N1 / N2);
	Hasta Que N1 < N2 // Esto divide hasta 1 por el orden en el que esta puesto, si fuese un mientras iria perfecto
	
FinAlgoritmo


