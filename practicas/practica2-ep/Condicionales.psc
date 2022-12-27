Algoritmo Condicionales
	Escribir  "Hola, cual es tu edad?"
	Leer edadPersona
	Escribir "Estoy atendiendo yo en ese momento?"
	Leer atendiendo
	
	Si atendiendo = 1 Entonces
		Si edadPersona >= 18 Entonces
			Escribir "Aqui esta tu bebida"
		SiNo
			Escribir "Disculpe, pero eres menor de edad y no puedo darte una bebida"
		FinSi
	SiNo
		Escribir "Aqui esta tu bebida"
	FinSi
FinAlgoritmo
