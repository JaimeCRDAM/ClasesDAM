Algoritmo UnoAlCien
	Definir N Como Entero;
	Definir F Como Caracter;
	
	Para A desde 1 Hasta 6 Con Paso 1
		N = Aleatorio(1, 49);
		F = concatenar(F, ConvertirATexto(N));
		F = concatenar(F, " ");
	FinPara
	Escribir "El numero de la loteria ha sido: ", F;
FinAlgoritmo
