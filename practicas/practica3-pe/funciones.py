#!/usr/bin/env python

# PRACTICA 1 - METODOS Y FUNCIONES
#funcion
def sumarNumeros(a, b):
    resultado = a + b
    return resultado

#invocar metodo y recibir resultado
#resultado = sumarNumeros(2, 4)

#imprimir resultado obtenido
#print(resultado)
print(sumarNumeros(2, 4))

#metodo sin retorno
# def restarNumeros(a, b):
#   resultado = a - b

def restarNumeros(a, b):
    resultado = a - b
    print(resultado)
    return resultado

# resultado = None
restarNumeros(2, 4)

nuevoResultado = sumarNumeros(5, 5) + restarNumeros(10, 5)
print(nuevoResultado)