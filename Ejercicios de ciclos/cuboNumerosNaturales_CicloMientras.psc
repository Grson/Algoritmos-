//Gers�n Samuel Alvarado de Le�n
//7/7/22
// Realizado en Pseint
// Ejercicios con ciclos

// *********	Realizado con el ciclo mientras	*******

//dado un grupo de n�meros naturales positivos, calcule e imprima el cubo de estos n�meros

Algoritmo cuboNumerosNaturales_CicloMientras
	
	Definir  cantidad, numeroIngresado, cubo, contadorCantidad Como Entero;
	
	
	contadorCantidad<- 1;

	Escribir "�A cu�ntos numeros desea calcular el cubo?";
	Leer cantidad;
	
	
	
	Mientras contadorCantidad<=cantidad Hacer
		Escribir "Ingrese un numero";
		Leer numeroIngresado;
		
		cubo<-numeroIngresado^3;
		
		Escribir "El cubo del n�mero ", numeroIngresado, " es ", cubo;
		
		
		contadorCantidad<- contadorCantidad+1;
	FinMientras
	
FinAlgoritmo