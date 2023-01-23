# perro = ['Balu', 'Blanco', 12]
# perro = {
#     'nombre': 'Balu',
#     'edad': 12
# }

# perro['nombre']

class Perro:
    def __init__(self, nombre, edad, color) -> None:
        self.nombre = nombre
        self.edad = edad
        self.color = color
    
    def ladrar(self, ladrido):
        return f'{ladrido} de color {self.color}!!'

    def __str__(self):
        return f'Hola! me llamo {self.nombre}'

class Husky(Perro):
    def jalar_trineo(self):
        return f'{self.nombre} esta jalando el trineo!'

class Bulldog(Perro):
    def morder(self):
        return f'{self.nombre} esta mordiendo.'

     