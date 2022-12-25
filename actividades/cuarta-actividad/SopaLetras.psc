Algoritmo SopaLetras
	//bloque declarativo
	Definir cantidadLetras, i, j como entero
	Definir letra Como Caracter
	cantidadLetras = 50
	
	Dimension miNombre[cantidadLetras], sopaLetra[cantidadLetras,cantidadLetras], letras[20]
	letras[0] = 'a'
	letras[1] = 'h'
	letras[2] = 'g'
	letras[3] = 'l'
	letras[4] = 'f'
	letras[5] = 'c'
	
	//datos ingresados por el usuario
	Escribir "Ingrese la cantidad de letras del nombre a introducir"
	Leer cantidadLetras
	
	Escribir salto
	
	Para i<-1 Hasta cantidadLetras Con Paso 1 Hacer
		Escribir "Ingresa la letra ", i
		Leer letra
		miNombre[i] <- letra
	FinPara
	
	//llenado matriz
	Escribir salto
	Escribir "..Generando sopa de letras"
	Para i<-1 Hasta cantidadLetras Con Paso 1 Hacer
		Para j<-1 Hasta cantidadLetras Con Paso 1 Hacer
			sopaLetra[i,j] <- letras[i]
		FinPara
	FinPara
	
	//agregando el nombre
	Para i<-1 Hasta cantidadLetras Con Paso 1 Hacer
		sopaLetra[cantidadLetras-1,i] <- miNombre[i]
	FinPara
	
	//impresion de la matriz - sopa de letra
	Escribir salto
	Escribir "Encuentre el nombre"
	Para i<-1 Hasta cantidadLetras Con Paso 1 Hacer
		EScribir salto
		Para j<-1 Hasta cantidadLetras Con Paso 1 Hacer
			Escribir Sin Saltar " " ,sopaLetra[i,j], " " Sin Saltar
		FinPara
	FinPara
	Escribir salto
FinAlgoritmo
