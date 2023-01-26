#   Tipo	Ejemplos
#   Integers	-2, -1, 0, 1, 2, 3, 4, 5
#   Floating-point numbers	-1.25, -1.0, --0.5, 0.0, 0.5, 1.0, 1.25
#   Strings	'a', 'aa', 'aaa', 'Hello!', '11 cats'

#variables
# El nombre de la variable debe de ser una sola palabra

# bad
# my variable = 'Hello'

 # good
var = 'Hello'

# Solo puede usar letras, número y guín bajo _

 # bad
 #%$@variable = 'Hello'

 # good
my_var = 'Hello'

 # good
my_var_2 = 'Hello'

# No puede empezar con un número

# No funciona
# 23_var = 'hello'

# Esto es un comentario

# Esto es un comentario que
# esta en multiples líneas

var = 1 #  Esto es un comentario también

# operadores matematicos
#  **   Exponent   2 ** 3 = 8 
#  %    Modulus/Remainder   22 % 8 = 6 
#  //   Integer division   22 // 8 = 2 
#  /    Division   22 / 8 = 2.75
#  *    Multiplication   3 * 3 = 9
#  -    Subtraction   5 - 2 = 3
#  +    Addition   2 + 2 = 4

# Ejemplos:

2 + 3 * 6
# 20

(2 + 3) * 6
# 30

2 ** 8
#256

23 // 7
# 3

23 % 7
# 2

(5 - 1) * ((7 + 1) / (3 - 1))
# 16.0

# Operador	Equivalencia
#   var += 1	var = var + 1
#   var -= 1	var = var - 1
#   var *= 1	var = var * 1
#   var /= 1	var = var / 1
#   var %= 1	var = var % 1

# Ejemplos:

saludo = 'Hello'
saludo += ' world!'
saludo
# 'Hello world!'

numero = 1
numero += 1
numero
# 2

my_list = ['item']
my_list *= 3

# my_list
# ['item', 'item', 'item']

#print
print('Hello world!')
# Hello world!

a = 1
print('Hello world!', a)
# Hello world! 1

#  El argumento  ´end´ se puede usar para evitar la nueva línea después de la salida, 
#  o terminar la salida con una cadena diferente:

phrase = ['printed', 'with', 'a', 'dash', 'in', 'between']
for word in phrase:
    ...     
    print(word, end='-')
    ...
# printed-with-a-dash-in-between-

# El argumento ´sep´ especifica cómo separar los objetos, si hay más de uno:

print('cats', 'dogs', 'mice', sep=',')
# cats,dogs,mice

# concatenacion
'Alice' 'Bob'
# 'AliceBob'

#replicacion
'Alice' * 5
# 'AliceAliceAliceAliceAlice'


#  Esta función permite que el usuario ingrese los datos solicitados.

print('¿Cuál es tu nombre?')   # Pregunta por el nombre
my_name = input()
print('Hi, {}'.format(my_name))

# What is your name?
# Martha
# Hi, Martha

#len
# Responde con un entero de la cantidad de caŕacteres que tiene un string, una lista, un diccionario, etc.

len('hello')
# 5

len(['cat', 3, 'dog'])
# 3

# docstring
#  Cuando requieres documentar tu código necesitas utilizar el formmato de comillas y texto, 
#  esto permite que swagger y openapi puedan generar la documentación.
#  El docstring tiene que estar despues de la declaracion de la clase o función y no es un 
#  comentario si no la documentación

def foo():
    """
    This is a function docstring
    You can also use:
    ''' Function Docstring '''
    """

#conversiones
#  Estas funciones nos permiten cambiar el tipo de dato que se guarda en la variable

str(29)  #  De entero a string
# '29'

str(-3.14)  #  De float a string
# '-3.14'

int('11')  #  De string a entero
# 11

float('3.14') #  De string a float
# 3.14   


#ciclo while
while True:
   name = input('¿Quién eres? ')
   if name != 'Hack':
        continue
   password = input('Password? (It is a fish.): ')
   if password == 'swordfish':
       break

print('Access granted.')
# Who are you? Joe
# Who are you? Padawan
# Who are you? Hack
# Password? (It is a fish.): swordfish
# Access granted.

# ciclo for
pets = ['Bella', 'Milo', 'Loki']
for pet in pets:
 print(pet)

# Bella
# Milo
# Loki

#operador de comparacion
#  Operador			Significado

#    ==				Equal to
#    !=	  			Not equal to
#    <				Less than
#    >				Greater Than
#    <=			 	Less than or Equal to
#    >=				Greater than or Equal to

42 == 42
True

40 == 42
False

'hello' == 'hello'
True

'hello' == 'Hello'
False

'dog' != 'cat'
True

42 == 42.0
True

42 == '42'
False

#operadores booleanos
# Operador ´and´

#  Expresión			Responde

#  True and True		True
#  True and False		False
#  False and True		False
#  False and False		False

# Operador ´or´

#  True or True			True
#  True or False		True
#  False or True		True
#  False or False		False

# Operador 'not´

#  not True			False
#  not False		True

#mezcla de operadores
(4 < 5) and (5 < 6)
True

(4 < 5) and (9 < 6)
False

(1 == 2) or (2 == 2)
True

2 + 2 == 4 and not 2 + 2 == 5 and 2 * 2 == 2 + 2
True

#if
name = 'Padawan'

if name == 'Padawan':
  print('Hi, Padawan')
...
# Hi, Padawan

if name != 'Hack':
   print('You are not Hack')

# You are not Hack