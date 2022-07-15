
//------------------------------------------------
// EJERCICIO EXTRA
//------------------------------------------------


//Gerson Samuel Alvarado de León
//11-07-222

//sumar n numeros impares


Funcion sumaNumerosPares <- calcularSumaImpares(numeroIngresado)
	
	Definir sumaNumerosPares Como Entero
	
	Si numeroIngresado=1 Entonces
		sumaNumerosPares<-1;
	SiNo
		sumaNumerosPares<- (2*numeroIngresado-1) + calcularSumaImpares(numeroIngresado-1);
	Fin Si
	
	
FinFuncion


Algoritmo sumaNumerosImpares
	Definir numeroIngresado Como Entero
	
	Escribir "Ingrese un numero";
	Leer numeroIngresado
	
	Escribir "La suma de ", numeroConsecutivo," primeros numeros impares es: ", calcularSumaImpares(numeroIngresado);
FinAlgoritmo
