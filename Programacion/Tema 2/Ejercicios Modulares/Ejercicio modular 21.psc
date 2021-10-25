Algoritmo Binario
	Escribir "Binario o decimal";
	Leer b;
	Escribir "Dime el numero2";
	Leer a;
	si b == "Binario" Entonces
		Escribir BinarioDecimal(a);
	SiNo
		Escribir DecimalBinario(a);//100001
	FinSi
FinAlgoritmo

funcion return <- BinarioDecimal(n)
	decimal = 0;
	i = 0;
	Mientras n > 0 Hacer
		digito = n%10;
		n = trunc(n/10);
		decimal = decimal+digito*(2^i);
		i = i+1;
	FinMientras
	return = decimal;
FinFuncion

funcion return <- DecimalBinario(n)
	binar = 0;
	i = 0;
	Mientras  n > 0 Hacer
		digito = n%2;
		n = trunc(n/2);
		binar = binar + digito*(10^i);
		i = i+1;
	FinMientras
	return = binar;
FinFuncion

	