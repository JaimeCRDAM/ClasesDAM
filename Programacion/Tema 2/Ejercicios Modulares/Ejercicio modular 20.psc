Algoritmo Comprobar
	Definir N, N1, N2 Como Entero;
	Escribir "Dame tres numeros";
	Leer N, N1, N2;
	Escribir MasGrande(N,N1,N2), Mediano(N,N1,N2), MasPeque�o(N,N1,N2);
	
	
FinAlgoritmo

Funcion return <- MasGrande(a, b, c)
	si a > b Entonces
		si a > c
			return = a;
		SiNo
			return = c;
		FinSi
	SiNo
		si b > c 
			return = b;
		sino 
			return = c;
		FinSi
	FinSi
FinFuncion

Funcion return <- MasPeque�o(a, b, c)
	si a < b Entonces
		si a < c
			return = a;
		SiNo
			return = c;
		FinSi
	SiNo
		si b < c 
			return = b;
		sino 
			return = c;
		FinSi
	FinSi
FinFuncion

Funcion return <- Mediano(a,b,c)
	si a <> MasGrande(a,b,c) o a <> MasPeque�o(a,b,c)
		return = a;
	FinSi
	si b <> MasGrande(a,b,c) o b <> MasPeque�o(a,b,c)
		return = b;
	FinSi
	si c <> MasGrande(a,b,c) o c <> MasPeque�o(a,b,c)
		return = c;
	FinSi
FinFuncion
	
	