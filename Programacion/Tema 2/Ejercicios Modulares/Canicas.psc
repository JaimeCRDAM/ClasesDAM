Algoritmo Canicas
	Definir P1, P2, Turn, P1Bid, P1Guess, P2Bid Como Entero;
	Definir T, P2Guess Como Caracter;
	Escribir "¿Quien empieza? Tu o yo";
	Leer T;
	
	si Minusculas(T) == "tu" Entonces
		Turn = 1;
	SiNo
		Turn = 0;
	FinSi
	
	P1 = 10;
	P2 = 10;
	Mientras P2 > 0 y P1 > 0 Hacer
		P1Guess = Aleatorio(0,1);
		P1Bid = Aleatorio(1,P1);
		si Turn == 0 Entonces
			Escribir "Haz tu apuesta, tienes ",P2," canicas";
			Leer P2Bid ;
			Escribir "¿Que crees que tiene la maquina?, Pares(P) o Nones(N)";
			Leer P2Guess ;
			si EsPar(P1Bid) == ParesONones(P2Guess) Entonces
				Escribir "¡Has ganado! Consigues ", P1Bid, " canicas";
				P1 = P1 - P1Bid;
				P2 = P2 + P1Bid;
			SiNo
				Escribir "¡Has perdido! Pierdes ", P2Bid, " canicas";
				P1 = P1 + P2Bid;
				P2 = P2 - P2Bid;
			FinSi
			Turn = 1;
		SiNo
			Escribir "Haz tu apuesta, tienes ",P2," canicas";
			Leer P2Bid ;
			si EsPar(P2Bid) == P1Bid Entonces
				Escribir "¡La maquina gana! pierdes ", P1Bid, " canicas";
				P1 = P1 + P1Bid;
				P2 = P2 - P1Bid;
			SiNo
				Escribir "¡La maquina pierde! ganas ", P2Bid, " canicas";
				P1 = P1 - P2Bid;
				P2 = P2 + P2Bid;
			FinSi
			Turn = 0;
		FinSi
	FinMientras
	si P1 <= 0 Entonces
		Escribir "¡Has ganado!";
	SiNo
		Escribir "¡Has perdido!";
	FinSi

FinAlgoritmo

funcion return <- ParesONones(string)
	si Minusculas(string) == "p" Entonces
		return = 0;
	SiNo
		return = 1;
	FinSi
FinFuncion

funcion return <- EsPar(N)
	si N%2 == 0 Entonces
		return = 0;
	SiNo
		return = 1;
	FinSi
	
FinFuncion
	