Algoritmo AlgoritmoLuhn
	
	//comunmente las TC tienen 16 digitos
	Dimension tarjetaCredito[16]
	
	// si se trata de indices de arreglos en impar
	Para i<-0 Hasta 15 con paso 1 Hacer
		Escribir "Ingrese los digitos de la tarjeta de credito a validar"
		Leer tarjetaCredito[16]
	FinPara
	
	//paso 1 - reversa de los digitos
	//paso 2 - duplicar las posiciones impares (impares si se tratan de arreglos, ya que inicia en 0)
	//paso 3 - si es mayor a 9 se le suman ambos numeros
	//paso 4 - se suman todos los digitos
	//paso 5 - si termina en 0 es valido
FinAlgoritmo
