Algoritmo NumeroFactorial
	factorial <- 1
	Escribir "Ingrese un numero"
	Leer num
	
	Mientras num <> 0 Hacer
		factorial = factorial * num
		num = num -1
	Fin Mientras
	
	Escribir "El factorial del numero es: ",factorial
FinAlgoritmo
