
//Gerson Samuel Alvarado de León
//11-07-222
// Ejercicios de recursividad

Funcion factorial <- factorialNumeroIngresado(numeroIngresado)
	
	Definir factorial Como Entero
	
	Si numeroIngresado=1 Entonces
		factorial<-1;
	SiNo
		factorial<- numeroIngresado*factorialNumeroIngresado(numeroIngresado-1);
	Fin Si
	
	
FinFuncion


Algoritmo Recursividad_Factorial
	Definir numeroIngresado Como Entero
	
	Escribir "Ingrese un numero";
	Leer numeroIngresado
	
	Escribir "El factorial es: ", factorialNumeroIngresado(numeroIngresado);
	
	
FinAlgoritmo
