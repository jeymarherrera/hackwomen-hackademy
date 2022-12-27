Algoritmo NumeroFactorial
//	bloque declarativo
	Definir num, factorial Como Entero
	factorial <- 1
//	datos de entrada
	Escribir "Ingrese un numero"
	Leer num
//	multiplicacion
	Mientras num <> 0 Hacer
		factorial = factorial * num
		num = num -1
	Fin Mientras
//	datos de salida
	Escribir "El factorial del numero es: ",factorial
FinAlgoritmo
