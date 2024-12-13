Proceso Correccion
//	Se tiene el arreglo llamado VENTAS, de P posiciones. Almacenar en el arreglo las ventas mensuales de una
//	empresa. Elabore un programa que haga lo siguiente:
//	a) Imprimir el número del mes en que se dió la menor venta de la empresa
//	b) Imprimir el valor de la menor venta
//	c) Calcular e imprimir el total de las ventas
//	d) Calcular e imprimir el promedio de las ventas de los meses pares y el de los meses impares (desde el
//	punto de vista del usuario)
//	e) Imprimir las ventas ordenadas en orden descendente

	
	Definir P, i, j, Mmenor, Cpares, Cimpares Como Entero;
	Definir Mventa, Tventas, Spares, Simpares, Aux Como Real;
	Definir Ppares, Pimpares Como Real;
	Definir Ventas Como Real; 
	
	Escribir "Ingrese el número de meses: ";
	Leer P;
	
	// Validación de número de meses
	Si P > 12 Entonces
		Escribir "El año solo tiene 12 meses. No puede ingresar un número mayor.";
	SiNo
		Dimension Ventas[P]; 
		
		// Ingreso de ventas
		Para i <- 0 Hasta P - 1 Hacer
			Escribir "Ingrese el valor de las ventas del mes ", i + 1, ": ";
			Leer Ventas[i];
		FinPara;
		
		// a) Encontrar el número del mes y valor de la menor venta
		Mventa <- Ventas[0];
		Mmenor <- 1;
		
		Para i <- 1 Hasta P - 1 Hacer
			Si Ventas[i] < Mventa Entonces
				Mventa <- Ventas[i];
				Mmenor <- i + 1;
			FinSi;
		FinPara;
		
		Escribir "El mes con la menor venta fue el mes ", Mmenor;
		Escribir "El valor de la menor venta es: ", Mventa;
		
		// c) Calcular el total de las ventas
		Tventas <- 0;
		Para i <- 0 Hasta P - 1 Hacer
			Tventas <- Tventas + Ventas[i];
		FinPara;
		
		Escribir "El total de ventas es: ", Tventas;
		
		// d) Calcular el promedio de ventas de meses pares e impares
		Spares <- 0;
		Simpares <- 0;
		Cpares <- 0;
		Cimpares <- 0;
		
		Para i <- 0 Hasta P - 1 Hacer
			Si ((i + 1) MOD 2) = 0 Entonces
				Spares <- Spares + Ventas[i];
				Cpares <- Cpares + 1;
			SiNo
				Simpares <- Simpares + Ventas[i];
				Cimpares <- Cimpares + 1;
			FinSi;
		FinPara;
		
		Si Cpares > 0 Entonces
			Ppares <- Spares / Cpares;
		SiNo
			Ppares <- 0;
		FinSi;
		
		Si Cimpares > 0 Entonces
			Pimpares <- Simpares / Cimpares;
		SiNo
			Pimpares <- 0;
		FinSi;
		
		Escribir "El promedio de ventas de los meses pares es: ", Ppares;
		Escribir "El promedio de ventas de los meses impares es: ", Pimpares;
		
		// e) Ordenar y mostrar las ventas en orden descendente
		Para i <- 0 Hasta P - 2 Hacer
			Para j <- i + 1 Hasta P - 1 Hacer
				Si Ventas[i] < Ventas[j] Entonces
					Aux <- Ventas[i];
					Ventas[i] <- Ventas[j];
					Ventas[j] <- Aux;
				FinSi;
			FinPara;
		FinPara;
		
		Escribir "Ventas ordenadas en orden descendente:";
		Para i <- 0 Hasta P - 1 Hacer
			Escribir Ventas[i];
		FinPara;
FinSi;

FinProceso
