Algoritmo BinarioDecimal
	Dimension arregloDecimales[8], arregloBinarios[8]
	//tabla decimal 
	arregloDecimales[0] <- 128
	arregloDecimales[1] <- 64
	arregloDecimales[2] <- 32
	arregloDecimales[3] <- 16
	arregloDecimales[4] <- 8
	arregloDecimales[5] <- 4
	arregloDecimales[6] <- 2
	arregloDecimales[7] <- 1

	//llenar arreglo binarios
	Para i<-0 Hasta 7 Con Paso 1 Hacer
		Escribir "Ingrese el ",i+1," bit"
		Leer arregloBinarios[i]
	FinPara
	
	//recorrer ambos arreglos y realizar suma de elementos 
	Para i<-0 Hasta 7 Con Paso 1 Hacer
		Si arregloBinarios[i] = 1 Entonces
			acumular = acumular + arregloDecimales[i]
		FinSi
	FinPara
	
	//imprimir arreglo binarios
	Escribir "Numero Binario ingresado: "
	Para i<-0 Hasta 7 Con Paso 1 Hacer
		Escribir arregloBinarios[i] Sin Saltar
	FinPara
	
	//imprimiendo resultado
	Escribir salto
	Escribir "Conversion a Numero Decimal: "
	Escribir acumular
FinAlgoritmo
