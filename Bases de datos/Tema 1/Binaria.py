import time
import numpy as np
import threading
Vector = np.arange(10000000)
print("Que numero, del 0 al {0}".format(len(Vector)))
NumeroABuscar = input()

_Auxiliar1 = Vector[:len(Vector)//2]
_Auxiliar2 = Vector[len(Vector)//2:]

Loops = 0
_time = time.time()
#Binary search
while True:
    if _Auxiliar2[0] == int(NumeroABuscar) or _Auxiliar1[0] == int(NumeroABuscar):
        print("Binaria: Se ha encontrado el numero {0}, en {1} Loops, {2} segundos".format(
            NumeroABuscar, Loops, time.time()-_time))
        break
    if _Auxiliar1[0] <= int(NumeroABuscar) and _Auxiliar1[len(_Auxiliar1)-1] >= int(NumeroABuscar):
        _Auxiliar2 = _Auxiliar1[:len(_Auxiliar1)//2]
        _Auxiliar1 = _Auxiliar1[len(_Auxiliar1)//2:]

    if _Auxiliar2[0] <= int(NumeroABuscar) and _Auxiliar2[len(_Auxiliar2)-1] >= int(NumeroABuscar):
        _Auxiliar1 = _Auxiliar2[:len(_Auxiliar2)//2]
        _Auxiliar2 = _Auxiliar2[len(_Auxiliar2)//2:]
    Loops += 1

Loops = 0
_time = time.time()
#Linear search
for numero in Vector:
    if numero == int(NumeroABuscar):
        print("Secuencial: Se ha encontrado el numero {0}, en {1} Loops, {2} segundos".format(
            NumeroABuscar, Loops, time.time()-_time))
        break
    Loops += 1

Loops = 0
_time = time.time()
#Back&Front search
Front = 0
Back = len(Vector)-1
while Front <= Back:
    if Vector[Front] == int(NumeroABuscar) or Vector[Back] == int(NumeroABuscar):
        print("Back&Front: Se ha encontrado el numero {0}, en {1} Loops, {2} segundos".format(
            NumeroABuscar, Loops, time.time()-_time))
        break
    Front += 1
    Back -= 1
    Loops += 1

