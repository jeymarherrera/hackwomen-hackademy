Algoritmo PromedioNotas
	cantidadNotas <- 0
	acumularNotas <- 0
	promedio <- 0
	
	Escribir "De cuantas notas desea sacar el promedio?"
	Leer cantidadNotas
	Para  i<-1 Hasta cantidadNotas Hacer
		Escribir "Ingrese la nota ",i
		Leer nota
		acumularNotas = acumularNotas + nota
	FinPara
	
	promedio = acumularNotas / cantidadNotas
	Escribir  "El promedio es: ",promedio
FinAlgoritmo
