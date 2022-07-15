//Gersón Samuel Alvarado de León
//1/7/22
// Realizado en Pseint
// Evaluacion con condicionales y ciclos

//Cajero de un banco,ingresar un montoIngresado de dinero, e indicar la cantidadIngresada menor de billetes y monedas que debe de entregar de cada denominación. 

Algoritmo Problema_5
	
	Definir salir Como Entero;
	Definir montoIngresado, cantidadIngresada Como Real;

	Escribir "Ingrese un monto";
	Leer montoIngresado;
	
	
	Escribir "------------------------------------------"
	Escribir "Deberá de ingresar de mayor a menor"
	Escribir "Despues de ingresar la cantidad se le solicitará que tipo es (billete o moneda)"
	Escribir "------------------------------------------"
	
	Repetir
		
		
		// Se repetirá hasta que ingrese numeros positivos
		Repetir
			Escribir "Ingrese una cantidad";
			Leer  cantidadIngresada;
		Hasta Que cantidadIngresada>0 
		Repetir
			Escribir "Especifiqué la deminación b o B para billete o m o M para moneda"
			Leer denominacionDeCantidad
			
		Hasta Que denominacionDeCantidad="m" o denominacionDeCantidad="M" o denominacionDeCantidad="b" o denominacionDeCantidad="B"
		
		
		
		// La cantidad ingresada debe ser menor al monto para poder entregar la menor cantidad de billete y monedas
		Si  cantidadIngresada<=montoIngresado  Entonces
			
			//Se inician las variables en 0
			resultado<-0
			i<-0
			
			
			//resultado sea menor al monto se repetirá
			Mientras resultado<=montoIngresado Hacer
				
				
				//Iterador se le suma 1
				i<- i+1
				
				//El resultado será la cantidad por i
				//Hasta que se tenga un numero menor igual al monto se detendrá
				resultado <- cantidadIngresada * i;
				
			FinMientras
			
			
			//EL iterador en mientras repite una vez mas cuando se da cuenta que el numero ya no cumple la condicion, debido a esto se debe de restar 1
			si i>1 Entonces
				i<-i-1
			FinSi
			
			si denominacionDeCantidad="b" o denominacionDeCantidad="B" Entonces
				tipo=" billete (s) "
			SiNo
				Si denominacionDeCantidad="m" o denominacionDeCantidad="M"  Entonces
					tipo=" moneda (s) "
				FinSi
			FinSi
			
			
			
			Escribir " Se necesitan ", i," ",tipo, " de la cantidad de ", cantidadIngresada ;
			
			
			// La cantidad que se ingresó por las veces que se necesitan 
			resultado <- cantidadIngresada*i;
			
			//El monto actual será la resta con los billete o monedas que se necesitaron
			nuevoMonto<-montoIngresado-resultado
			
			//Con esto se podrá tener la menor cantidad de billete y monedas
			montoIngresado<-  nuevoMonto;
			
			
		finsi
		
		si montoIngresado=0 Entonces
			Escribir "............................................................"
			Escribir " Se han entregado la menor cantidad de monedas y billetes "
			Escribir "............................................................"
		FinSi
		
	Hasta Que montoIngresado=0
FinAlgoritmo