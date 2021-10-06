Algoritmo Calculadora
	Definir N Como Entero;
	Escribir "Introduce un numero";
	Leer st;
	Escribir "Introduce un operando +,-,*,/";
	Leer op;
	Escribir "Introduce otro numero";
	Leer nd;
	Segun N Hacer
		"+": Escribir st + nd;
		"-": Escribir st - nd;
		"*": Escribir st * nd;
		"/": Dividir(st, nd);
	FinSegun

FinAlgoritmo

Funcion Dividir(st, nd)
	si st == 0 o nd == 0 Entonces
		Escribir "No metas 0";
	SiNo
		Escribir st/nd;
	FinSi
FinFuncion
