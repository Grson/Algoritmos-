//------------------------------------------------
// EJERCICIO EXTRA
//------------------------------------------------


//Gerson Samuel Alvarado de León
//11-07-222

//Sumar n prmeros numeros consecutivos

Funcion sumaNumeroConsecutivo <- calcular (numeroIngresado)
	
	Definir sumaNumeroConsecutivo Como Entero
	
	Si numeroIngresado=1 Entonces
		sumaNumeroConsecutivo<-1;
	SiNo
		sumaNumeroConsecutivo <- numeroIngresado^2 + calcular(numeroIngresado-1);
	Fin Si
	
	
FinFuncion


Algoritmo Suma_Numeros_Consecutivos
	Definir numeroIngresado Como Entero
	
	Escribir "Ingrese un numero";
	Leer numeroIngresado
	
	Escribir "La suma de ", numeroConsecutivo," primeros numeros consecutivos es: ", calcular(numeroIngresado);
	
FinAlgoritmo
