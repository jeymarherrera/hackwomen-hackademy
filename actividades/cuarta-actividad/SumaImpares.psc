Algoritmo SumaImpares
	//bloque declarativo
	Definir numImpar Como Entero
	acumulador <- 0
	
	//insercion de datos de entrada
	Repetir
		Escribir "Ingrese un numero impar entre 1-31"
		Leer numImpar
	Hasta Que numImpar % 2 <> 0
	
	//suma de numeros impares
	Mientras numImpar <> 0 Hacer
		Si numImpar % 2 <> 0 Entonces
			acumulador = acumulador + numImpar
		FinSi
		numImpar = numImpar - 1
	Fin Mientras
	
	//impresion de datos de salida
	Escribir "La suma es = ", acumulador
FinAlgoritmo
