Algoritmo UnoAlCien
	Repetir
		Limpiar Pantalla;
		Escribir "Menú de recomendaciones";
		Escribir "   1. Ejercicio 23";
		Escribir "   2. Ejercicio 29";
		Escribir "   3. Ejercicio 31";
		Escribir "   5. Termina";
		// ingresar una opcion
		Escribir "Elija una opción (1-3): ";
		Leer OP;
		// procesar esa opción
		Segun OP Hacer
			1: Ejercicio23();
			2: Ejercicio29();
			3: Ejercicio31();
			De otro modo:
				Escribir "Opción no válida";
		FinSegun
		Escribir "Presione enter para continuar";
		Esperar Tecla;
	Hasta Que OP=5
	
FinAlgoritmo

Funcion Ejercicio23()
	Escribir "Escribe un numero";
	Leer N;
	
	Escribir "El factorial de ",N," es ", Factorial(N);
FinFuncion

Funcion Ejercicio29()
	Definir N Como Entero;
	Definir sobresalientes Como Entero;
	Definir notables Como Entero;
	Definir bienes Como Entero;
	Definir aprobados Como Entero;
	Definir suspensos Como Entero;
	Escribir "Se va a calcular el numero de suspensos, aprobados, bienes, notables y sobresalientes hasta que introduzcas uno negativo";
	N = 0;
	
	Mientras N >= 0 Hacer // En C++ y en Java funcionaria, la otra manera seria hacer if {}; 
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
FinFuncion

Funcion Ejercicio31()
	Definir N Como Entero;
	Escribir "Dame un numero";
	Leer N;
	si N % 2 <> 0 y N%3 <> 0 y N%7 <> 0 y N%5 <> 0 o N == 5 o N == 3 Entonces
		Escribir "Es primo";
	SiNo
		Escribir "No es primo";
	FinSi
FinFuncion

Funcion Return <- Factorial ( N )
	si N > 1 Entonces
		Return = N * Factorial(N-1);
	SiNo
		Return = 1;
	FinSi
Fin Funcion
