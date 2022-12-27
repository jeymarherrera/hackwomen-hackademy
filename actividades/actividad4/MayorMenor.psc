Algoritmo MayorMenor
	//bloque declarativo
	Definir cantidad, edad, posicionMayor, posicionMenor, mayorEdad, menorEdad Como Entero
	mayorEdad <- 0
	menorEdad <- 0
	
	Escribir "Bienvenid@! Necesito que porfa llenes un arreglo con edades."
	Escribir "Cuantas edades deseas ingresar dentro del arreglo"
	Leer cantidad
	
	Dimension edadesIngresadas[cantidad]
	
	//llenado arreglo
	Escribir salto
	Para  i<-0 Hasta cantidad-1 Con Paso 1 Hacer
		Escribir "Ingrese la edad ", i
		Leer edad
		edadesIngresadas[i] = edad
	FinPara
	
	//recorriendo arreglo
	Para  i<-0 Hasta cantidad-1 Con Paso 1 Hacer
		Si i == 0 Entonces
			menorEdad <- edadesIngresadas[i]
			mayorEdad <- edadesIngresadas[i]
		SiNo
			Si edadesIngresadas[i] > mayorEdad Entonces	
				mayorEdad <- edadesIngresadas[i]
				posicionMayor = i
			SiNo
				Si edadesIngresadas[i] < menorEdad Entonces	
					menorEdad <- edadesIngresadas[i]
					posicionMenor = i
				FinSi
			FinSi
		FinSi
	FinPara
	
	//imprimiendo retroalimentacion
	Escribir salto
	Escribir "Edad mayor es igual a = ",mayorEdad," esta edad la ingresaste en la posicion ",posicionMayor
	Escribir "Edad menor es igual a = ",menorEdad," esta edad la ingresaste en la posicion ",posicionMenor

	Escribir salto
	Escribir "Estas son las edades que has ingresado dentro del arreglo, junto a su posicion: "
	Para  i<-0 Hasta cantidad-1 Con Paso 1 Hacer
		Escribir i+1,". ", edadesIngresadas[i], " en la posicion ", i
	FinPara
FinAlgoritmo
