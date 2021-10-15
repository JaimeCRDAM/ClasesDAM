Algoritmo Area
	Definir N Como Real;
	Escribir "Dime el lado de un cuadrado";
	Leer N
	Escribir "El area del cuadrado son ", AreaCuadradoReturn(N)," cm cuadrados y su perimetro son ", PerimetroCuadradoReturn(N)," cm"; //return
	AreaCuadrado(N) //sin return
	PerimetroCuadrado(N) //sin return
	
	
	
FinAlgoritmo

Funcion return <- AreaCuadradoReturn( N )
	return = N^2;
FinFuncion

Funcion return <- PerimetroCuadradoReturn( N )
	return = N*4;
FinFuncion

Funcion AreaCuadrado( N )
	Escribir "El area del cuadrado son ", N^2," cm cuadrados";
FinFuncion

Funcion PerimetroCuadrado( N )
	Escribir "El perimetro del cuadrado son ", N*4," cm";
FinFuncion