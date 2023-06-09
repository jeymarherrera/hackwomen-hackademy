Algoritmo Ejercicios3
	//Bloque declarativo
	Definir opcion Como Caracter;
	Definir contrasena1, contrasena2, transferencia, sucursal_desde, sucursal_hasta, producto, cantidad como cadena;
	Definir total_sucursal, total_sucursal1, total_sucursal2, total_sucursal3, total_producto1, total_producto2, total_producto3, total_producto4 Como Entero;
	Definir total_p1s1, total_p2s1, total_p3s1, total_p4s1, total_p1s2, total_p2s2, total_p3s2, total_p4s2, total_p1s3, total_p2s3, total_p3s3, total_p4s3 como Entero;
	Definir valido, accesoValido, accesoValido2 Como Logico;
	//inicializando variables
	valido <- Falso;
	accesoValido <- Falso;
	accesoValido2 <- Falso;
	sucursal_desde = "";
	sucursal_hasta = "";
	producto = "";
	cantidad = "";
	total_sucursal = 0;
	total_sucursal1 = 0;
	total_sucursal2 = 0;
	total_sucursal3 = 0;
	total_producto1 = 0;
	total_producto2 = 0;
	total_producto3 = 0;
	total_producto4 = 0;
	total_p1s1 = 0;
	total_p2s1 = 0;
	total_p3s1 = 0;
	total_p4s1 = 0;
	total_p1s2 = 0;
	total_p2s2 = 0;
	total_p3s2 = 0;
	total_p4s2 = 0;
	total_p1s3 = 0;
	total_p2s3 = 0;
	total_p3s3 = 0;
	total_p4s3 = 0;
	
	Mientras accesoValido = Falso Hacer
		Escribir "Bienvenido! Ingrese su contraseña";
		Leer contrasena1;
		accesoValido=validarContrasena(contrasena1);
		Si accesoValido = Falso Entonces
			Escribir  "La contraseña es invalida";
		FinSi
	Fin Mientras

	Repetir
	Limpiar Pantalla;
	Escribir "              Bienvenido           ";
	Escribir "-----------------------------------";
	Escribir "           Menu de Opciones        ";
	Escribir "-----------------------------------";
	Escribir "1. Realizar una nueva transferencia";
	Escribir "2. Ver Reportes";
	Escribir "0. Salir";
	Escribir "-----------------------------------";
	Escribir "Elige una opcion (0-2)";
	Leer opcion;
	
	Segun opcion Hacer
		'1':
			valido <-Falso;
			Limpiar Pantalla;
			Mientras valido = Falso Hacer
				Escribir "Ingrese una trasferencia";
				Escribir "* Recuerde que el formato debe ser: sucursal_desde-sucursal_hasta-producto-cantidad";
				Leer transferencia;
				DesglosarTransferencia(transferencia, sucursal_desde, sucursal_hasta, producto, cantidad );
				
				valido = RealizarValidaciones(sucursal_desde, sucursal_hasta, producto);
			FinMientras
			ActualizarCantidadSucursal(cantidad, sucursal_hasta, total_sucursal1, total_sucursal2, total_sucursal3, total_sucursal);
			ActualizarProducto(cantidad, producto, total_producto1, total_producto2, total_producto3, total_producto4);
			ActualizarProductoXSucursal(cantidad, producto, sucursal_hasta, total_p1s1, total_p2s1, total_p3s1, total_p4s1, total_p1s2, total_p2s2, total_p3s2, total_p4s2, total_p1s3, total_p2s3, total_p3s3, total_p4s3);
			Escribir "Pulse cualquier tecla para continuar...";
			Esperar Tecla;
		'2':
			Limpiar Pantalla;
			Mientras accesoValido2 = Falso Hacer
				Escribir "Ingrese contraseña para visualizar los reportes: ";
				Leer contrasena2;
				
				Si contrasena2 = contrasena1 Entonces
					Escribir "La contraseña no puede ser igual a la ingresada anteriormente";
				SiNo
					accesoValido2=validarContrasena(contrasena2);
					Si accesoValido2 = Falso Entonces
						Escribir  "La contraseña es invalida";
					FinSi
				FinSi
			Fin Mientras
			
			Escribir "Total de productos transferidos: ",total_sucursal; 
			Escribir "";
			Escribir "Total de transferencias según producto: ";
			Escribir "P001: ", total_producto1;
			Escribir "P002: ", total_producto2;
			Escribir "P003: ", total_producto3;
			Escribir "P004: ", total_producto4; 
			Escribir "";
			Escribir "Total de transferencia hacia cada sucursal: ";
			Escribir "0101: ", total_sucursal1;
			Escribir "0102: ", total_sucursal2;
			Escribir "0103: ", total_sucursal3; 
			Escribir "";
			Escribir "Total de transferencias hacia cada sucursal según producto:";
			Escribir "- 0101";
			Escribir "P001: ", total_p1s1;
			Escribir "P002: ", total_p2s1;
			Escribir "P003: ", total_p3s1;
			Escribir "P004: ", total_p4s1;
			Escribir "";
			Escribir "- 0102";
			Escribir "P001: ", total_p1s2;
			Escribir "P002: ", total_p2s2;
			Escribir "P003: ", total_p3s2;
			Escribir "P004: ", total_p4s2;
			Escribir "";
			Escribir "- 0103";
			Escribir "P001: ", total_p1s3;
			Escribir "P002: ", total_p2s3;
			Escribir "P003: ", total_p3s3;
			Escribir "P004: ", total_p4s3;
			Escribir "";
			Escribir "Pulse cualquier tecla para continuar...";
			Esperar Tecla;
		'0':
			Limpiar Pantalla;
			Escribir "Hasta Luego!";
		De Otro Modo:
			Limpiar Pantalla;
			Escribir "Esta opcion no es valida";
	FinSegun
	Hasta Que opcion == '0';
	
FinAlgoritmo

Funcion accesoValido <- validarContrasena( contrasenaIngresada )
	Definir contrasenasValidas como Cadena;
	Definir accesoValido Como Logico;
	Definir i Como Entero;
	Dimension contrasenasValidas[6]; 
	contrasenasValidas[0]="ABCD123";
	contrasenasValidas[1]="54321AB";
	contrasenasValidas[2]="XYZ1234";
	contrasenasValidas[3]="ABCDEFG";
	contrasenasValidas[4]="12345678";
	contrasenasValidas[5]="987654321";
	
	Para i<-0 Hasta 5 Hacer
		Si contrasenaIngresada = contrasenasValidas[i] Entonces
			accesoValido <- Verdadero;
		FinSi
	FinPara
FinFuncion

// conseguir el indice donde se encuentra el separador -
Funcion siguiente_indice <- ObtenerSiguienteIndice ( siguiente_indice, transferencia, separador )
	Definir longitud_cadena, i, indice_encontrado como Entero;
	Definir encontrado Como Logico;
	encontrado <- falso;
	longitud_cadena = Longitud(transferencia);
    indice_encontrado = siguiente_indice;
	
	Mientras indice_encontrado < longitud_cadena hacer
        Si Subcadena(transferencia, indice_encontrado, indice_encontrado) = separador entonces
            siguiente_indice = indice_encontrado;
			encontrado <- Verdadero;
			si encontrado = Verdadero Entonces
				indice_encontrado = longitud_cadena;
			FinSi
        FinSi
        indice_encontrado = indice_encontrado + 1;
    FinMientras
FinFuncion

//dividir la cadena transferencia ingresada por el usuario
Funcion DesglosarTransferencia ( transferencia, sucursal_desde Por Referencia, sucursal_hasta Por Referencia, producto Por Referencia, cantidad Por Referencia )
	Definir indice, siguiente_indice Como Entero;
	
	indice = 0;
	siguiente_indice = ObtenerSiguienteIndice(0, transferencia, "-");
	sucursal_desde = Subcadena(transferencia, 0, siguiente_indice -1);
	
	indice = siguiente_indice + 1;
	siguiente_indice = ObtenerSiguienteIndice(indice, transferencia, "-");
	sucursal_hasta = Subcadena(transferencia, indice, siguiente_indice -1);
	
	indice = siguiente_indice + 1;
	siguiente_indice = ObtenerSiguienteIndice(indice, transferencia, "-");
	producto = Subcadena(transferencia, indice, siguiente_indice -1);
	
	indice = siguiente_indice + 1;
	cantidad = Subcadena(transferencia, indice, Longitud(transferencia));
FinFuncion

//validar que ingrese los codigos correctos y no sea mismas sucursales
Funcion valido <- RealizarValidaciones ( sucursal_desde Por Referencia, sucursal_hasta Por Referencia, producto Por Referencia )
	Definir validado, valido Como Logico;
	validado <- Falso;
	valido <- Falso;
	si sucursal_desde = "0101" o sucursal_desde = "0102" o sucursal_desde = "0103" Entonces
		si sucursal_hasta = "0101" o sucursal_hasta = "0102" o sucursal_hasta = "0103" Entonces
			si producto = "P001" o producto = "P002" o producto = "P003" o producto = "P004" Entonces
				Si sucursal_desde <> sucursal_hasta Entonces
					validado <- Verdadero;
				SiNo
					Escribir "La transferencia no puede ser hacia la misma sucursal.";
					validado <- Falso;
				FinSi
			SiNo
				Escribir "El producto que desea transferir no existe";
				validado <- Falso;
			FinSi
		SiNo
			Escribir "La sucursal hacia donde desea realizar la transferencia no existe";
			validado <- Falso;
		FinSi
	SiNo
		Escribir "La sucursal desde donde se realiza la transferencia no existe";
		validado <- Falso;
	FinSi
	valido = validado;
FinFuncion

//Total de transferencias según producto:
Funcion ActualizarCantidadSucursal (cantidad, sucursal, total_sucursal1 Por Referencia, total_sucursal2 Por Referencia, total_sucursal3 Por Referencia , total_sucursal Por Referencia)
	Definir sucursal1, sucursal2, sucursal3 como cadena;
	Definir cantidad_producto Como Entero;
	cantidad_producto = ConvertirANumero(cantidad);
	sucursal1 = "0101";
	sucursal2 = "0102";
	sucursal3 = "0103";
	
	si sucursal=sucursal1 entonces
		total_sucursal1 = total_sucursal1 + cantidad_producto;
		total_sucursal = total_sucursal + cantidad_producto;
	SiNo
		si sucursal=sucursal2 entonces
			total_sucursal2 = total_sucursal2 + cantidad_producto;
			total_sucursal = total_sucursal + cantidad_producto;
		SiNo
			si sucursal=sucursal3 entonces
				total_sucursal3 = total_sucursal3 + cantidad_producto;
				total_sucursal = total_sucursal + cantidad_producto;
			SiNo
				Escribir "La sucursal ingresada no existe";
			FinSi
		FinSi
	FinSi
FinFuncion

//Total de transferencia hacia cada sucursal:
Funcion ActualizarProducto (cantidad, producto, total_producto1 Por Referencia, total_producto2 Por Referencia, total_producto3 Por Referencia , total_producto4 Por Referencia)
	Definir producto1, producto2, producto3, producto4 como cadena;
	Definir cantidad_producto Como Entero;
	cantidad_producto = ConvertirANumero(cantidad);
	producto1 = "P001";
	producto2 = "P002";
	producto3 = "P003";
	producto4 = "P004";
	
	si producto=producto1 entonces
		total_producto1 = total_producto1 + cantidad_producto;
	SiNo
		si producto=producto2 entonces
			total_producto2 = total_producto2 + cantidad_producto;
		SiNo
			si producto=producto3 entonces
				total_producto3 = total_producto3+ cantidad_producto;
			SiNo
				si producto=producto4 entonces
					total_producto4 = total_producto4+ cantidad_producto;
				SiNo
					Escribir "El producto ingresado no existe";
				FinSi
			FinSi
		FinSi
	FinSi
FinFuncion

//Total de transferencias hacia cada sucursal según producto:
Funcion ActualizarProductoXSucursal (cantidad, producto, sucursal, total_p1s1 Por Referencia, total_p2s1 Por Referencia, total_p3s1 Por Referencia, total_p4s1 Por Referencia, total_p1s2 Por Referencia, total_p2s2 Por Referencia, total_p3s2 Por Referencia, total_p4s2 Por Referencia, total_p1s3 Por Referencia, total_p2s3 Por Referencia, total_p3s3 Por Referencia, total_p4s3 Por Referencia)
	Definir producto1, producto2, producto3, producto4 como cadena;
	Definir cantidad_producto Como Entero;
	cantidad_producto = ConvertirANumero(cantidad);
	producto1 = "P001";
	producto2 = "P002";
	producto3 = "P003";
	producto4 = "P004";
	
	si sucursal = "0101" Entonces
		si producto=producto1 entonces
			total_p1s1 = total_p1s1 + cantidad_producto;
		SiNo
			si producto=producto2 entonces
				total_p2s1 = total_p2s1 + cantidad_producto;
			SiNo
				si producto=producto3 entonces
					total_p3s1 = total_p3s1+ cantidad_producto;
				SiNo
					si producto=producto4 entonces
						total_p4s1 = total_p4s1+ cantidad_producto;
					SiNo
						Escribir "El producto ingresado no existe";
					FinSi
				FinSi
			FinSi
		FinSi
	SiNo
		si sucursal = "0102" Entonces
			si producto=producto1 entonces
				total_p1s2 = total_p1s2 + cantidad_producto;
			SiNo
				si producto=producto2 entonces
					total_p2s2 = total_p2s2 + cantidad_producto;
				SiNo
					si producto=producto3 entonces
						total_p3s2 = total_p3s2+ cantidad_producto;
					SiNo
						si producto=producto4 entonces
							total_p4s2 = total_p4s2+ cantidad_producto;
						SiNo
							Escribir "El producto ingresado no existe";
						FinSi
					FinSi
				FinSi
			FinSi
		SiNo
			si sucursal = "0103" Entonces
				si producto=producto1 entonces
					total_p1s3 = total_p1s3 + cantidad_producto;
				SiNo
					si producto=producto2 entonces
						total_p2s3 = total_p2s3 + cantidad_producto;
					SiNo
						si producto=producto3 entonces
							total_p3s3 = total_p3s3+ cantidad_producto;
						SiNo
							si producto=producto4 entonces
								total_p4s3 = total_p4s3+ cantidad_producto;
							SiNo
								Escribir "El producto ingresado no existe";
							FinSi
						FinSi
					FinSi
				FinSi
			SiNo
				Escribir "La sucursal ingresada no existe";
			FinSi
		FinSi
	FinSi
FinFuncion