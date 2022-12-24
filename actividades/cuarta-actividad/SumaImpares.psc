Algoritmo SumaImpares
	//bloque declarativo
	Definir numImpar Como Entero
	acumulador <- 0
	
	Repetir
		Escribir "Ingrese un numero impar entre 1-31"
		Leer numImpar
	Hasta Que numImpar % 2 <> 0
	
	Mientras numImpar <> 0 Hacer
		Si numImpar % 2 <> 0 Entonces
			acumulador = acumulador + numImpar
		FinSi
		numImpar = numImpar - 1
	Fin Mientras
	
	Escribir "La suma es = ", acumulador
	
FinAlgoritmo
