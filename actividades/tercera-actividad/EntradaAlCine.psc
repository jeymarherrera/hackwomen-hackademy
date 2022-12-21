Algoritmo EntradaAlCine
	Definir edad Como Entero
	Definir supervision Como Logico
	Definir respuesta Como Caracter
	
	supervision <- falso
	Escribir ("Bienvenido al cine Hackwomen.dev")
	Escribir ("Ingrese su edad")
	Leer  edad
	
	si edad <= 15 Entonces
		Escribir ("Cuenta con supervision de sus padres? S/N")
		Leer respuesta
		si respuesta == "si" O repuesta == "Si" O respuesta == "s" O respuesta == "S" Entonces
			supervision <- verdadero
			Escribir ("Pueder ver esta pelicula")
		SiNo
			Escribir ("No puede ver esta pelicula")
		FinSi
	SiNo
		Escribir ("Pueder ver esta pelicula")
	FinSi
FinAlgoritmo
