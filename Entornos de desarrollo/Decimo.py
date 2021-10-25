# Este codigo ha sido generado por el modulo psexport 20180802-l64 de PSeInt.
# Es posible que el codigo generado no sea completamente correcto. Si encuentra
# errores por favor reportelos en el foro (http://pseint.sourceforge.net).


# En python no hay forma de elegir como pasar una variable a una
# funcion (por referencia o por valor). Las variables "inmutables"
# (str, int, float, bool) se pasan siempre por copia mientras que
# las demas (listas, objetos, etc.) se pasan siempre por referencia.
# Esto coincide con el comportamiento por defecto en pseint, pero
# cuando utiliza las palabras clave "Por Referencia" para
# alterarlo la traducci�n no es correcta.

def masgrande(a, b, c):
	if a>b:
		if a>c:
			j = a
		else:
			j = c
	else:
		if b>c:
			j = b
		else:
			j = c
	return j

def maspequeno(a, b, c):
	if a<b:
		if a<c:
			j = a
		else:
			j = c
	else:
		if b<c:
			j = b
		else:
			j = c
	return j

def mediano(a, b, c):
	if a!=masgrande(a,b,c) or a!=maspequeno(a,b,c):
		j = a
	if b!=masgrande(a,b,c) or b!=maspequeno(a,b,c):
		j = b
	if c!=masgrande(a,b,c) or c!=maspequeno(a,b,c):
		j = c
	return j

if __name__ == '__main__':
	n = int()
	n1 = int()
	n2 = int()
	print("Dame tres numeros")
	n = int(input())
	n1 = int(input())
	n2 = int(input())
	print(masgrande(n,n1,n2),mediano(n,n1,n2),maspequeno(n,n1,n2))
	print(maspequeno(n,n1,n2),mediano(n,n1,n2),masgrande(n,n1,n2))

