
//Gerson Samuel Alvarado de León
//11-07-222
//Ejercicio de recursividad



Funcion retornoFibonacci <- calcularFibonacci (numeroIngresado)
	
	Definir retornoFibonacci Como Entero;
	
	Si numeroIngresado=1 o numeroIngresado=2 Entonces
		retornoFibonacci<- 1;
	SiNo
		retornoFibonacci<- calcularFibonacci (numeroIngresado-1) + calcularFibonacci (numeroIngresado-2);
	FinSi
	
	
FinFuncion

Algoritmo  Fibonacci
	
	Definir numeroIngresado Como Entero;
	Escribir "Ingrese un numero";
	Leer numeroIngresado;
	
	Escribir "El numero ", numeroIngresado, " en fibonacci es ", calcularFibonacci(numeroIngresado) ;
	
FinProceso
