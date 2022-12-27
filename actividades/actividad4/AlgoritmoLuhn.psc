Algoritmo AlgoritmoLuhn
	sumar <- 0
	k<-1
	// si se trata de indices de arreglos en impar //comunmente las TC tienen 16 digitos
	Dimension tarjetaCredito[16]
	//paso 1 - reversa de los digitos
	Para i<-15 Hasta 0 con paso -1 Hacer
		Escribir "Ingrese el digito ",k," de la tarjeta de credito a validar"
		Leer tarjetaCredito[i]
		k=k+1
	FinPara

	Para i<-0 Hasta 15 Con Paso 1 Hacer
		Si i % 2 <> 0 Entonces
			//paso 2 - duplicar las posiciones impares (impares si se tratan de arreglos, ya que inicia en 0)
			tarjetaCredito[i] <- tarjetaCredito[i] * 2
		FinSi
		//paso 3 - si es mayor a 9 se le suman ambos numeros
		Si tarjetaCredito[i] >= 10 Entonces
			//paso 4 - se suman todos los digitos
			sumar = sumar + (tarjetaCredito[i] % 10)  + trunc(tarjetaCredito[i] / 10) 
		SiNo
			sumar = sumar + tarjetaCredito[i]
		FinSi
	FinPara
	//paso 5 - si termina en 0 es valido
	Escribir salto
	Si sumar % 10 = 0 Entonces
		Escribir "Tarjeta Valida!"
	SiNo
		Escribir "Tarjeta Invalida!"
	FinSi
FinAlgoritmo
