Algoritmo DiaProgreso
	//bloque declarativo
	progreso <- 0
	contador <- 0
	//datos de entrada
	Escribir "Ingrese cuantos sabados ha corrido"
	Leer cantidadSabados
	
	Dimension millasRecorridas[cantidadSabados]
	
	Para i<-0 Hasta cantidadSabados-1 Con Paso 1 Hacer
		Escribir "Ingrese las millas recorridas (numero entero) ",i+1
		Leer millasRecorridas[i]
	FinPara
	
	//recorriendo arreglo
	Para  i<-0 Hasta cantidadSabados-1 Con Paso 1 Hacer
		Si i == 0 Entonces
			progreso <- millasRecorridas[i]
		SiNo
			Si millasRecorridas[i] > progreso Entonces	
				progreso = millasRecorridas[i]
				contador = contador + 1
			SiNo
				progreso = millasRecorridas[i]
			FinSi
		FinSi
	FinPara
	//datos de salida
	Escribir contador," dias de progreso."
FinAlgoritmo
