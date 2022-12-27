Algoritmo CocinarHuevos
	Escribir "Cuantos huevos deseas cocinar?"
	Leer cantidadHuevos
	Escribir "Como desea cocinar sus huevos? Fritos/Revueltos/Cocidos"
	Leer preferencia
	
	Escribir "Siga las siguientes intrucciones"
	si preferencia = "fritos" o preferencia = "Fritos" Entonces
		Escribir "1. Busque un sarten para cocinar"
		Escribir "2. Encienda la estufa"
		Escribir "3. Coloque el  sarten en la estufa a fuego medio"
		Escribir "4. Agregue un poco de aceite/mantequilla"
		Escribir "5. Rompa los huevos en un bol"
		Escribir "6. Agregue los huevos al sarten"
	SiNo
		si preferencia = "revueltos" o preferencia = "Revueltos" Entonces
			Escribir "1. Busque un sarten para cocinar"
			Escribir "2. Encienda la estufa"
			Escribir "3. Coloque el  sarten en la estufa a fuego medio"
			Escribir "4. Agregue un poco de aceite/mantequilla"
			Escribir "5. Rompa los huevos en un bol"
			Escribir "6. Revuelvalos con un tenedor y agreguelos al sarten"
		SiNo
			si preferencia = "cocidos" o preferencia = "Cocidos" Entonces
				Escribir "1. Busque una olla para cocinar"
				Escribir "2. Encienda la estufa"
				Escribir "3. Coloque la olla en la estufa a fuego medio"
				Escribir "4. Agregue agua suficiente"
				Escribir "5. Agregue los huevos en la olla"
				Escribir "6. Espere por 30 minutos"
			FinSi		
		FinSi	
	FinSi
FinAlgoritmo
