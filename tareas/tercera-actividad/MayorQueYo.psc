Algoritmo MayorQueYo
	definir miEdad, edadPersona, i Como Entero
	definir nombrePersona Como Caracter
	Dimension  nombres[3], edades[3]
	
	miEdad <- 21
	Para i<-0 hasta 2 Con Paso 1 Hacer
		Escribir  ("Ingrese el nombre de la persona")
		Leer nombrePersona
		nombres[i] <- nombrePersona
		Escribir ("Ingrese la edad de la persona")
		Leer edadPersona
		edades[i] <- edadPersona
	FinPara
	
	Para i<-0 hasta 2 Con Paso 1 Hacer
		si edades[i] > miEdad Entonces
			Escribir  (nombres[i] + " es mayor que yo")
		SiNo
			si edades[i] < miEdad Entonces
				Escribir  (nombres[i] + " es mas joven que yo")
			SiNo
				Escribir  (nombres[i] + " tiene la misma edad que yo")
			FinSi	
		FinSi
	FinPara
	
FinAlgoritmo
