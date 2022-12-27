Algoritmo CalculadoraPromedios
	//bloque declarativo
	Definir acumulador, promedio, calificacion Como Real
	Definir cantidad Como Entero
	acumulador <- 0
	promedio <- 0
	
		//ingreso de las cantidades de calificaciones 
		Escribir "De cuantas calificaciones desea sacar el promedio?"
		Leer cantidad
		
		Dimension calificaciones[cantidad]
		
		//llenando arreglo
		Escribir salto
		Para  i<-0 Hasta cantidad-1 Con Paso 1 Hacer
			Escribir "Ingrese la calificacion ",i+1
			Leer calificacion
			calificaciones[i] = calificacion
			acumulador = acumulador + calificacion
		FinPara
		
		//imprimiendo arreglo
		Escribir salto
		Escribir "Las calificaciones ingresadas son las siguientes:  "
		Para  i<-0 Hasta cantidad-1 Con Paso 1 Hacer
			Escribir "Calificacion ", i+1, " = ", calificaciones[i] 
		FinPara
		
		//sacando promedio
		Escribir salto
		promedio = acumulador / cantidad
		Escribir  "El promedio es: ",promedio
FinAlgoritmo
