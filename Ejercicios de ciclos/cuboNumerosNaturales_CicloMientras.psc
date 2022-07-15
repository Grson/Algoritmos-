//Gersón Samuel Alvarado de León
//7/7/22
// Realizado en Pseint
// Ejercicios con ciclos

// *********	Realizado con el ciclo mientras	*******

//dado un grupo de números naturales positivos, calcule e imprima el cubo de estos números

Algoritmo cuboNumerosNaturales_CicloMientras
	
	Definir  cantidad, numeroIngresado, cubo, contadorCantidad Como Entero;
	
	
	contadorCantidad<- 1;

	Escribir "¿A cuántos numeros desea calcular el cubo?";
	Leer cantidad;
	
	
	
	Mientras contadorCantidad<=cantidad Hacer
		Escribir "Ingrese un numero";
		Leer numeroIngresado;
		
		cubo<-numeroIngresado^3;
		
		Escribir "El cubo del número ", numeroIngresado, " es ", cubo;
		
		
		contadorCantidad<- contadorCantidad+1;
	FinMientras
	
FinAlgoritmo