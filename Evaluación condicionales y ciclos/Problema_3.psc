
//Gersón Samuel Alvarado de León
//1/7/22
// Realizado en Pseint
// Evaluacion con condicionales y ciclos

// *************	Usando ciclo Mientras	***********

//Primeros Z números múltiplos de X.

Algoritmo Problema_3
	
	Definir x,z, multiplicador, operacion, sumaResultado Como Entero;
	
	multiplicador<-1;
	sumaResultado<-0;
	Escribir "Ingrese el valor de x (multilicando)";
	Leer x;
	
	Escribir "Ingrese el valor de z (cantidad de multiplos)";
	Leer z;
	
	
	// se multiplicará la cantaidad de veces de z
	Mientras multiplicador<=z Hacer
		operacion <- x * multiplicador;
		sumaResultado <- sumaResultado + operacion;
		
		multiplicador<- multiplicador+1;
	FinMientras
	
	// se suman todos los resultados
	Escribir "La suma de los ",z," multiplos de ",x, " es de ", sumaResultado;
	
FinAlgoritmo
	
	
	
	
