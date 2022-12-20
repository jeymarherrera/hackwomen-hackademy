Algoritmo AngulosPoligono
	Definir lados, suma Como Entero
	Repetir
		Escribir ("Ingrese los lados del poligono *Recuerde que debe ser mayor a 2*")
		Leer lados
	Hasta Que lados > 2
	
	suma = (lados - 2) * 180
	Escribir "La suma de todas las medidas de los angulos de un poligono de ", lados, " lados es de: ", suma
FinAlgoritmo
