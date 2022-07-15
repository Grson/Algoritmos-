
//Gersón Samuel Alvarado de León
//1/7/22
// Realizado en Pseint
// Evaluacion con condicionales y ciclos


// Ingresar números enteros positivos y terminar hasta que se ingrese el numero "0"


Algoritmo Problema_2
	
	Definir  numeroSalir, numeroIngresado, sumaTotal, numeroMaximo, numeroMinimo, totalNumerosIngresados Como Entero;
	Definir promedio Como Real;
	
	promedio<- 0;
	sumaTotal<-0;
	numeroMaximo <-0;
	numeroMinimo<-0;
	totalNumerosIngresados <- 0;
	numeroSalir<-1;
	
	Repetir
		
		Limpiar Pantalla;
		
		totalNumerosIngresados <- totalNumerosIngresados +1;
		
		//Ingreso de numeros
		Escribir "Ingrese un numero";
		Leer numeroIngresado;
		
		
		//La primera vez numeo maximo y minimo valen cero se les asigna el numero que se ingrese la primera vez
		si numeroMaximo=0 y numeroMinimo=0 Entonces
			numeroMaximo<-numeroIngresado;
			numeroMinimo<-numeroIngresado;
		FinSi
		
		
		//Se realizan compraciones para encontrar el numero mayor y menor
		si numeroIngresado>=numeroMaximo Entonces
			numeroMaximo<- numeroIngresado;
		FinSi
			
			
		si numeroIngresado<=numeroMinimo Entonces
			numeroMinimo<- numeroIngresado;
		finsi
		
		
		

		
		// Suma total de todos los numeros
		sumaTotal <- sumaTotal + numeroIngresado;
		
		// El promedio de toda la suma / el total de los numeros ingresados
		promedio <- sumaTotal / totalNumerosIngresados;
		
		
		Limpiar Pantalla;
		Escribir "Si desesa salir debe de ingresar el numero 0 de lo contrario ingrese cualquier otro numero";
		Leer numeroSalir;
		
		
	//Se termina el ciclo hasta que el numero ingresado sea 0
	Hasta Que numeroSalir=0
	
	
	Limpiar Pantalla;
	//Muestra los resultados
	Escribir "La suma total es ", sumaTotal;
	Escribir "El promedio es ", promedio;
	Escribir "El numero máximo es ", numeroMaximo;
	Escribir "El número minimo es ", numeroMinimo;
	
FinAlgoritmo
