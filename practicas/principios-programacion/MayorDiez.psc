Algoritmo MayorDiez
	cantidadNumeros <- 5
	Dimension listaNumeros[cantidadNumeros], mayoresDiez[cantidadNumeros]
	
	Escribir "Cuantos numeros desea ingresar?"
	Leer cantidadNumeros
	Para  i<-1 Hasta cantidadNumeros Hacer
		Escribir "Ingrese el numero"
		Leer num
		listaNumeros[i-1] <- num
	FinPara
	
	Escribir "Los numero ingresados son:"
	Para  i<-1 Hasta cantidadNumeros Hacer
		Escribir i," - ", listaNumeros[i-1] 
	FinPara
	
	Para  i<-0 Hasta cantidadNumeros Hacer
		si listaNumeros[i] >= 10 Entonces
			mayoresDiez[i] <- listaNumeros[i] 			
		FinSi
	FinPara
	
	Escribir "Los numero en la lista mayoresDiez son:"
	Para  i<-1 Hasta cantidadNumeros Hacer
		Escribir i," - ", mayoresDiez[i-1] 
	FinPara
FinAlgoritmo
