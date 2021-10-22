Algoritmo Segundo_Grado
	Definir N1,N2,N3,Result1,Result2 Como Entero;
	
	Escribir "Escribe la a";
	Leer N1;
	Escribir "Escribe la b";
	Leer N2;
	Escribir "Escribe la c";
	Leer N3;
	
	Escribir "Un resultado es ", ResultadoUno(a,b,c), " El otro es ", ResultadoDos(a,b,c);
	
FinAlgoritmo

Funcion return <- ResultadoUno(a,b,c)
	return = ((-b)+raiz(b^2-4*a*c))/(2*a);
FinFuncion

Funcion return <- ResultadoDos(a,b,c)
	return = ((-b)-raiz(b^2-4*a*c))/(2*a);
FinFuncion
	