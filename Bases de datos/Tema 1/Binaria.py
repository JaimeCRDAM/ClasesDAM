Vector = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]
print("numero del 0 al 20")
Busqueda = input()
NumeroABuscar = input()


Loops = 0
if Busqueda == "Binaria":
    while True:
        if _Auxiliar2[0] == int(NumeroABuscar) or _Auxiliar1[0] == int(NumeroABuscar):
            print("Se ha encontrado el numero {0}, en {1} Loops".format(NumeroABuscar, Loops))
            break
        if _Auxiliar1[0] < int(NumeroABuscar) and _Auxiliar1[len(_Auxiliar1)-1] > int(NumeroABuscar):
            _Auxiliar2 = _Auxiliar1[:len(_Auxiliar1)//2]
            _Auxiliar1 = _Auxiliar1[len(_Auxiliar1)//2:]

        if _Auxiliar2[0] <= int(NumeroABuscar) and _Auxiliar2[len(_Auxiliar2)-1] >= int(NumeroABuscar):
            _Auxiliar1 = _Auxiliar2[:len(_Auxiliar2)//2]
            _Auxiliar2 = _Auxiliar2[len(_Auxiliar2)//2:]
        Loops += 1
        _Auxiliar1 = Vector[:len(Vector)//2]
        _Auxiliar2 = Vector[len(Vector)//2]
else:
    for numero in Vector:
        if numero == int(NumeroABuscar):
            print("Se ha encontrado el numero {0}, en {1} Loops".format(NumeroABuscar, Loops))
            break
        Loops += 1


