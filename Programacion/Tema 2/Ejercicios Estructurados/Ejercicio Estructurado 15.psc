Algoritmo Mayor_Medio_Menor
	Definir N1 Como Entero;
	Definir N2 Como Entero;
	Definir N3 Como Entero;
	
	Definir Min_ Como Entero;
	Definir Med_ Como Entero;
	Definir Max_ Como Entero;	
	
	
	Escribir "Escribe tres numeros";
	
	Leer N1;
	Leer N2;
	Leer N3;
	
	
	
	si N1 > N2 Entonces
		
		si N1 > N3 Entonces
			Max_ = N1
			Min_ = N2
			Med_ = N3
		SiNo
			Max_ = N3
			Med_ = N1
			Min_ = N2
		FinSi
		
	SiNo
		
		si N2 > N3 Entonces
			Max_ = N2
			Min_ = N1
			Med_ = N3
		SiNo
			Med_ = N2
			Min_ = N1
			Max_ = N3
		FinSi
		
	FinSi
	
	Escribir Min_, Med_, Max_;
	
FinAlgoritmo
