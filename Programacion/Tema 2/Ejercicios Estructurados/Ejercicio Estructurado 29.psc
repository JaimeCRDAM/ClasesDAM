Algoritmo Media_Cualquiera
	Definir N Como Entero;
	Definir sobresalientes Como Entero;
	Definir notables Como Entero;
	Definir bienes Como Entero;
	Definir aprobados Como Entero;
	Definir suspensos Como Entero;
	Escribir "Se va a calcular el numero de suspensos, aprobados, bienes, notables y sobresalientes hasta que introduzcas uno negativo";
	N = 0;
	
	Mientras N >= 0 Hacer // En c++ funcionaria, no estoy seguro de en java, la otra manera seria hacer if {}; 
		Leer N;
		Segun N Hacer
			1:
			2:
			3:
			4: suspensos = suspensos + 1;
			5: aprobados = aprobados + 1;
			6:
			7: bienes = bienes + 1;
			8: notables = notables + 1;
			9: 
			10: sobresalientes = sobresalientes + 1;
		FinSegun
	FinMientras
	
	Escribir "Suspensos: ", suspensos;
	Escribir "Aprobados: ", aprobados;
	Escribir "Bienes: ", bienes;
	Escribir "Notables: ", notables;
	Escribir "Sobresalientes: ", sobresalientes;
	
FinAlgoritmo
