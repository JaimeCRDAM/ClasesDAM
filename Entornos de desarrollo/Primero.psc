Algoritmo Carcel
	Definir S Como Caracter;
	Escribir "Eres culpable, ¿Si o no?";
	Leer S;
	
	Segun Minusculas(S) Hacer
		"si": Escribir "Iras a la carcel";
		"no": Escribir "Vete a tu casa";
		De Otro Modo:
			Escribir "Dame tu documentacion, por favor";
	FinSegun
	
FinAlgoritmo
