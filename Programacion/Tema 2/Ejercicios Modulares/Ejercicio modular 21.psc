Algoritmo Binario
	
	Escribir BinarioDecimal(101);
FinAlgoritmo

funcion return <- BinarioDecimal(n)
	decimal = 0;
	i = 0;
	Mientras n > 0 Hacer
		digito = n%10;
		Escribir "dig ",digito;
		n = trunc(n/10);
		Escribir "bin ", n;
		decimal = decimal+digito*(2^i);
		Escribir "dec ",decimal;
		i = i+1;
	FinMientras
	return = decimal;
FinFuncion

funcion return <- DecimalBinario(n)
	return = 0;
FinFuncion
	