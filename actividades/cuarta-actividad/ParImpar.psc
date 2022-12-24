Algoritmo ParImpar
	//bloque declarativo
	Definir cantidad, num Como Entero
	
	Escribir "Bienvenid@! Necesito que porfa llenes un arreglo con numeros"
	Escribir "Cuantas numeros deseas ingresar dentro del arreglo"
	Leer cantidad
	
	Dimension elementosNumericos[cantidad], copiaArreglo[cantidad]
	
	//llenado arreglo
	Escribir salto
	Para  i<-0 Hasta cantidad-1 Con Paso 1 Hacer
		Escribir "Ingrese el elemento numerico ", i+1
		Leer num
		elementosNumericos[i] = num
	FinPara
	
	Para  i<-0 Hasta cantidad-1 Con Paso 1 Hacer
		Si elementosNumericos[i] % 2 = 0 Entonces
			copiaArreglo[i] <- "Es par"
		SiNo
			copiaArreglo[i] <- "Es impar"
		FinSi
	FinPara
	
	Escribir salto
	Escribir "Estas son las numeros que has ingresado dentro del arreglo original, junto a su posicion: "
	Para  i<-0 Hasta cantidad-1 Con Paso 1 Hacer
		Escribir i+1,". ", elementosNumericos[i], " en la posicion ", i
	FinPara
	
	Escribir salto
	Escribir "Estas son las resultados obtenidos dentro del arreglo copia, junto a su posicion: "
	Para  i<-0 Hasta cantidad-1 Con Paso 1 Hacer
		Escribir i+1,". ", copiaArreglo[i], " en la posicion ", i
	FinPara
	
FinAlgoritmo
