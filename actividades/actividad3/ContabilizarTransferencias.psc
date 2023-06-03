Algoritmo ContabilizarTransferencias
	i <- 1
	suma <- 0 

    Mientras contrase�aValida = Falso Hacer
        Escribir "Ingrese la contrase�a:"
        Leer contrase�aIngresada1
		contrase�aValida=validarContrase�a(contrase�aIngresada1)
        
        Si contrase�aValida = Falso Entonces
            Escribir "La contrase�a es inv�lida. Int�ntelo nuevamente."
        FinSi
    FinMientras
	
	Escribir "Cuantos registros desea ingresar?"
	Leer n
	
	Dimension registros[n, 4]
    
	Mientras sucursalSalidaValida = Falso Hacer
        Escribir "Ingrese el codigo de la sucursal de donde sale el producto:"
        Leer sucursalIngresada1
        sucursalSalidaValida=validarSucursal(sucursalIngresada1)

        Si sucursalSalidaValida = Falso Entonces
            Escribir "La sucursal de salida es inv�lida. Int�ntelo nuevamente."
        FinSi
    FinMientras
	
	Mientras sucursalEntradaValida = Falso Hacer
        Escribir "Ingrese el codigo de la sucursal donde entrara el producto:"
        Leer sucursalIngresada2
		Si sucursalIngresada2 = sucursalIngresada1 Entonces
			Escribir "La sucursal no puede ser la misma de donde sale el producto."
		SiNo
			sucursalEntradaValida=validarSucursal(sucursalIngresada2)
		FinSi
        
        Si sucursalEntradaValida = Falso Entonces
            Escribir "La sucursal de salida es inv�lida. Int�ntelo nuevamente."
        FinSi
    FinMientras
	
	Mientras productoValido = Falso Hacer
        Escribir "Ingrese el codigo del producto:"
        Leer productoIngresado
		productoValido=validarProducto(productoIngresado)
		
        Si productoValido = Falso Entonces
            Escribir "El codigo del producto es inv�lido. Int�ntelo nuevamente."
        FinSi
    FinMientras
	
	Escribir "Ingrese la cantidad de producto que est� siendo transferido:"
	Leer cantidadProducto
	
	Escribir "Desea ver la salida final? s/n"
	Leer respuesta
	
	Si respuesta = "s" Entonces
		Mientras contrase�aValida2 = Falso Hacer
			Escribir "Ingrese la contrase�a:"
			Leer contrase�aIngresada2
			Si contrase�aIngresada2= contrase�aIngresada1 Entonces
				Escribir "La contrase�a no puede ser la misma con la que inicio."
			SiNo
				contrase�aValida2 =validarContrase�a(contrase�aIngresada2)
			FinSi
			
			Si contrase�aValida2 = Falso Entonces
				Escribir "La contrase�a es inv�lida. Int�ntelo nuevamente."
			FinSi
		FinMientras
	SiNo
		Escribir "Hasta luego"
	Fin Si
	
	
    Para i <- 1 Hasta n Hacer
        suma <- suma + registros[i, 4]
    FinPara
    
    Escribir "La suma de la cuarta columna es:", suma
FinAlgoritmo

Funcion contrase�a <- validarContrase�a ( contrase�aIngresada )
	Dimension contrase�asValidas[6]
	contrase�asValidas[1]="ABCD123"
	contrase�asValidas[2]="54321AB"
	contrase�asValidas[3]="XYZ1234"
	contrase�asValidas[4]="ABCDEFG"
	contrase�asValidas[5]="12345678"
	contrase�asValidas[6]="987654321"

	Para i <- 1 Hasta 6 Hacer
		Si contrase�aIngresada = contrase�asValidas[i] Entonces
			contrase�a <- Verdadero
		FinSi
	FinPara
Fin Funcion

Funcion sucursal <- validarSucursal ( sucursalIngresada )
	Dimension sucursalesValidas[3] 
	sucursalesValidas[1]="0101"
	sucursalesValidas[2]="0102"
	sucursalesValidas[3]="0103"
	Para i <- 1 Hasta 3 Hacer
		Si sucursalIngresada = sucursalesValidas[i] Entonces
			sucursal <- Verdadero
		FinSi
	FinPara
Fin Funcion

Funcion producto <- validarProducto ( productoIngresado )
	Dimension productosValidos[4]
	productosValidos[1]="P001"
	productosValidos[2]="P002"
	productosValidos[3]="P003"
	productosValidos[4]="P004"
	Para i <- 1 Hasta 3 Hacer
		Si productoIngresado = productosValidos[i] Entonces
			producto <- Verdadero
		FinSi
	FinPara
Fin Funcion