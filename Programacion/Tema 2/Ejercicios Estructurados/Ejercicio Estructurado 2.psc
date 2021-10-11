Algoritmo Area_Perimetro_Triangulo
	Definir lado1 Como Entero;
	Definir lado2 Como Entero;
	Definir lado3 Como Entero;
	Escribir "Introduce los tres lados de un triangulo";
	Leer lado1;
	Leer lado2;
	Leer lado3;
	si lado3 no es Entero Entonces
		Escribir "Introduce los tres lados con numeros";
		Leer lado1;
		Leer lado2;
		Leer lado3;
	FinSi
	Definir SPerimetro como Real;
	Definir Resultado Como Real;
	SPerimetro = (lado1+lado2+lado3)/2;
	Resultado = Raiz(SPerimetro*(SPerimetro-lado1)*(SPerimetro-lado3)*(SPerimetro-lado2));
	Escribir "El area es ", Resultado, "cm cuadrados";
	Escribir "El perimetro es ",(lado1+lado2+lado3);
	
FinAlgoritmo
