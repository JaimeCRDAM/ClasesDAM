Algoritmo Helado
	
	Definir N Como Entero;
	
	Limpiar Pantalla;
	Escribir "1 El topping de oreo cuesta 1.";
	Escribir "2 El topping de KitKat cuesta 1.50";
	Escribir "3 El topping de brownie cuesta 0.75.";
	Escribir "4 El topping de lacasitos cuesta 0.95";
	Escribir "5 Sin topping cuesta 1.90";
	
	Definir H Como Real;
	H = 1.9;
	
	
	Leer N;
	para i <- 1 hasta 2 Con Paso 1 Hacer
		Segun N Hacer
			1: Escribir "Son ", H+1; i = 2;
			2: Escribir "Son ", H+1.5;  i = 2;
			3: Escribir "Son ", H+0.75;  i = 2;
			4: Escribir "Son ", H+0.95;  i = 2;
			5: Escribir "Son ", H;  i = 2;
			De Otro Modo:
				Escribir "No tenemos ese topping, el precio del helado sin topping es", H;
		FinSegun
	FinPara
	
FinAlgoritmo
