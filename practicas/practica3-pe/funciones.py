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

# OPERADOR AND
if nuevoResultado > 15 and nuevoResultado < 20:
    print("El resultado es mayor a 15:" + str(nuevoResultado)) + " y menor a 20"
#else:
#   print("El resultado es menor a 15:" + str(nuevoResultado)) + " y menor a 20"

# OPERADOR OR
#if nuevoResultado > 15 or nuevoResultado < 20:
   # print("El resultado es mayor a 15:" + nuevoResultado)+ " O menor a 20"


# OPERADOR NOT
if not(nuevoResultado > 15):
    print("El resultado es mayor a 15:" + str(nuevoResultado))
else:
   print("El resultado es menor a 15:" + str(nuevoResultado))  

# validacion if dentro de un metodo
def esPar(numero):
    if numero % 2 == 0:
        print(str(numero)+" Es par")
    else:
        print(str(numero)+" Es impar")

esPar(20)
esPar(21)

# validacion if y elif
def menuOpciones(opcion):
    if opcion == "a":
        print("El resultado de la suma es: "+ str(sumarNumeros(8,12)))
    elif opcion == "b":
        restarNumeros(20,8)
    elif opcion == "c":
        esPar(38)
    else:
        print("Esta opcion no esta disponible, verifique")

menuOpciones("a")
menuOpciones("b")
menuOpciones("c")
menuOpciones("x")

# validacion if operador ternario
def esParTernary(numero):
    print("Es par") if numero % 2 == 0 else print("Es impar")

esParTernary(18)    
esParTernary(65)  

def estasContento():
    alegre = True

    while alegre:
        mood = input("Ahora estas contento? si o no?: ")
        if mood.lower() != "no":
            print("Que bueno que estas contento!")
        else:
            alegre = False
            
    print("*************")        
    print("No estas alegre :( que podemos hacer para alegrarte?")
    
print("*************")

#estasContento()

def listaGatos():
    gatos = ["Cebollo", "Cleo", "Paquita", "Siracha", "Moe", "Venancio"]

    for gato in gatos:
        print(gato)

    print('''
    ''')

    gatosDetalles = {"Cebollo": "Blanco", "Cleo": "Calico", "Paquita": "Calico", "Siracha":"Tuxedo", "Moe":"Blanco", "Venancio":"Antigrado"}

    for gatoLlave in gatosDetalles:
        print(f"nombre del gato: {gatoLlave}")

    for gatoColor in gatosDetalles.value():
        print(f"Su color es: {gatoColor}")  

    print('''
        ''')

    for gato, color in gatosDetalles.items():
        print(f"El nombre del gato: {gato} es de color: {color}")       

listaGatos()