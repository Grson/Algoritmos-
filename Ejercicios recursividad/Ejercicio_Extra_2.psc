//------------------------------------------------
// EJERCICIO EXTRA
//------------------------------------------------


//Gerson Samuel Alvarado de León
//11-07-222
//sumar n primeros numeros pares



Funcion sumaNumerosPares <- calcularSuma(numeroIngresado)
	
	Definir sumaNumerosPares Como Entero
	
	Si numeroIngresado=1 Entonces
		sumaNumerosPares<-2;
	SiNo
		sumaNumerosPares<- (2*numeroIngresado)+calcularSuma(numeroIngresado-1);
		Escribir numeroIngresado;
	Fin Si
	
	
FinFuncion


Algoritmo numerosImpares
	Definir numeroIngresado Como Entero
	
	Escribir "Ingrese un numero";
	Leer numeroIngresado
	
	Escribir "La suma de ", numeroConsecutivo," primeros numeros pares es: ", calcularSuma(numeroIngresado);
FinAlgoritmo
