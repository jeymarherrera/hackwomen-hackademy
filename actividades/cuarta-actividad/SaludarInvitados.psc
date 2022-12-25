Algoritmo SaludarInvitados
	//bloque declarativo
	Definir cantidadInvitados Como Entero
	
	//datos de entrada
	Escribir "Ingrese la cantidad de invitados"
	Leer cantidadInvitados
	
	Dimension nombresInvitados[cantidadInvitados]
	
	Para  i<-0 Hasta cantidadInvitados-1 Con Paso 1 Hacer
		Escribir "Ingrese el nombre del invitado ",i+1
		Leer nombresInvitados[i]
	FinPara
	
	//datos de salida
	Para  i<-0 Hasta cantidadInvitados-1 Con Paso 1 Hacer
		Escribir "Hola ",nombresInvitados[i], ", " Sin Saltar
	FinPara
	Escribir salto
FinAlgoritmo
