Algoritmo ContieneEdad
	//bloque declarativo
	Definir cantidad, edad, posicion Como Entero
	Definir encontrado Como Logico
	miEdad <- 21
	encontrado = falso

	Escribir "Bienvenid@! Necesito que porfa llenes un arreglo con edades."
	Escribir "Cuantas edades deseas ingresar dentro del arreglo"
	Leer cantidad
	
	Dimension edadesIngresadas[cantidad]
	//llenado arreglo
	Escribir salto
	Para  i<-0 Hasta cantidad-1 Con Paso 1 Hacer
		Escribir "Ingrese la edad ", i+1
		Leer edad
		edadesIngresadas[i] = edad
	FinPara
	
	//recorriendo arreglo
	Para  i<-0 Hasta cantidad-1 Con Paso 1 Hacer
		Si edadesIngresadas[i] = miEdad
			posicion = i
			encontrado = Verdadero
		FinSi
	FinPara
	
	//imprimiendo resultado
	Escribir salto
	Escribir "Resultado del hallazgo: ", encontrado
	
	//imprimiendo retroalimentacion
	Escribir salto
	Si encontrado = Verdadero
		Escribir "SI!!! Mi edad es: ",miEdad, " esta edad la ingresaste en la posicion ",posicion
		encontrado = Verdadero
	SiNo
		Escribir "Lo siento! pero ninguna de las edades ingresadas coinciden con la mia :("
		Escribir "Mi edad es: ", miEdad
	FinSi
	
	Escribir salto
	Escribir "Estas son las edades que has ingresado dentro del arreglo, junto a su posicion: "
	Para  i<-0 Hasta cantidad-1 Con Paso 1 Hacer
		Escribir i+1,". ", edadesIngresadas[i], " en la posicion ", i
	FinPara
FinAlgoritmo