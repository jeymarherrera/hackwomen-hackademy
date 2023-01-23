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