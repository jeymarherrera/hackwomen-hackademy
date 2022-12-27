Algoritmo DecimalBinario
//	bloque declarativo
	Definir numeroDecimal, numeroBinario Como Entero
	Dimension arregloBinarios[8]
	i<-0
	j<-1
	numeroBinario <- 0
	
//	datos de entrada
	Escribir "Ingrese numero decimal"
	Leer numeroDecimal
	
	Mientras numeroDecimal > 0 Hacer
		Si numeroDecimal % 2 == 1 Entonces
			numeroBinario = numeroBinario + j
		FinSi
		numeroDecimal = trunc(numeroDecimal/2)
		j=j*10
	Fin Mientras
	
//	datos de salida
	Escribir numeroBinario
FinAlgoritmo
