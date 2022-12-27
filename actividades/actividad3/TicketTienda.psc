Algoritmo TicketTienda
	definir codigoArticulo, cantidadArticulo, i Como Entero
	definir nombreCliente Como Caracter
	Dimension inventario[5], articulosComprados[5], articulosCantidades[5]
	
	inventario[0] <- "Blusa Temporada"
	inventario[1] <- "Playera p/ Deporte"
	inventario[2] <- "Shorts de Mezclilla"
	inventario[3] <- "Leggins"
	inventario[4] <- "Camisa"
	
	Escribir "Ingrese el nombre del cliente"
	Leer nombreCliente
	
	Para i<-0 hasta 4 Con Paso 1 Hacer
		Repetir
			Escribir "Ingrese el codigo del articulo *0-4*"
			Leer codigoArticulo
		Hasta Que codigoArticulo >= 0 y codigoArticulo <= 4
		articulosComprados[i] <- inventario[codigoArticulo]
		Escribir "Ingrese la cantidad adquirir del articulo"
		Leer cantidadArticulo
		articulosCantidades[i] <- cantidadArticulo
	FinPara
	
	Escribir "Hack Women - Tienda de Ropa"
	Escribir "Este es su resumen de compra, ", nombreCliente, "."
	Para i<-0 hasta 4 Con Paso 1 Hacer
		Escribir  i+1,". ", articulosCantidades[i],"x - ", articulosComprados[i]
	FinPara
	
	Escribir " "
	Escribir "Gracias por su compra!"
FinAlgoritmo
