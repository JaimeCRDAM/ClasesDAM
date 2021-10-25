import math
def DecimalBinario(n):
	binar = 0
	i = 0
	while n > 0:
		digito = n%2
		n = math.floor(n/2)
		binar = binar + digito*(math.pow(10,i))
		i = i+1
	return binar

print(DecimalBinario(46))
