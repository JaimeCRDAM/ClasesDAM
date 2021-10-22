Algoritmo Nacimiento
	Definir N,N1,N2 Como Entero;
	Escribir "En que año naciste";
	Leer N;
	Escribir "En que mes naciste";
	Leer N1;
	Escribir "En que dia naciste";
	Leer N2;
	Años(N,N1,N2);
	
FinAlgoritmo

Funcion Años(a,m,d)
	Definir hoy,nac Como Real;
	hoy = 2021*365.25+9*30.41+20;
	nac = a*365.25+m*30.41+d;
	Escribir (hoy-nac)/365.25, " Años";
FinFuncion
