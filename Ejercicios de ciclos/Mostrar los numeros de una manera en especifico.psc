//Gersón Samuel Alvarado de León
//1/7/2022
//Ejercicio de ciclos aninados

//Realizar un programa que se visualice de la siguiente forma
//1
//12
//123
//12
//1
	
	
	
	Proceso Escalera_Inversa
		Definir numeroIngresado, contadorEscalera,  contadorEscaleraRestante Como Entero;
		
		
		//Se solicita un numero y se valida el rango del numero
		Repetir
			Escribir "Ingrese un numero del 1 al 20";
			Leer numeroIngresado;
		Hasta Que numeroIngresado>0 y numeroIngresado<21
		
		
		//Se realiza la primera mita
		si numeroIngresado>1 Entonces
			
		contador<-1;
		Repetir
			
			Escribir "";
			//Se realiza de uno en uno 
			Para i<-1 Hasta contador Con Paso 1 Hacer
				Escribir i Sin Saltar;
			FinPara
			
			//Con el contador se van aumentando los numeros a mostrar
			contador<- contador+1;
			
		//Se detendra hasta que sea igual el numero ingresado con el contador
		Hasta Que contador=numeroIngresado
		
		
		
		
		//Se realiza la segunda mitad
		Mientras numeroIngresado>0 Hacer
			
			Escribir " ";
			//Se realizará los mismo que el ciclo anterior pero ahora disminutendo un numero 
			Para contadorEscalera<-1 Hasta numeroIngresado Con Paso 1 Hacer
				Escribir   contadorEscalera  Sin Saltar;
			FinPara
			
			//hasta que sea uno se dejara de repetir
			numeroIngresado<- numeroIngresado-1;
		FinMientras
		Escribir " ";
		
		
		
		
		SiNo
		Escribir "1";
	FinSi
		
		
FinProceso
