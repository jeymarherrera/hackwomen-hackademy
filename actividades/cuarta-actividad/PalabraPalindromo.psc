Algoritmo PalabraPalindromo
//	bloque declarativo
	Definir palabra, palabraInversa Como Caracter
	Definir cantidad Como Entero
	Definir palindromo Como Logico
	
	palindromo = Falso
	
//	datos de entrada
	Escribir "Ingrese la palabra"
	Leer  palabra
	cantidad = Longitud(palabra)
	
	Dimension palabraIngresada[cantidad]
	
//	llenado arreglo
	Para i<-0 Hasta cantidad-1 Con Paso 1 Hacer
		palabraIngresada[i] <- subcadena(palabra,i,i)
	FinPara
	
//	inversion de palabra
	Para i<-cantidad-1 Hasta 0 Con Paso -1 Hacer
		palabraInversa<- Concatenar(palabraInversa, palabraIngresada[i])
	FinPara
	
//	comparacion
	Si palabra = palabraInversa Entonces
		palindromo = Verdadero
		Escribir palindromo, ". ",palabra,", es Palindromo"
	SiNo
		palindromo = Falso
		Escribir palindromo,". ",palabra,", no es Palindromo"
	FinSi
FinAlgoritmo
