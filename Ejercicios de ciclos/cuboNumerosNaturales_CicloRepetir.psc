//Gers�n Samuel Alvarado de Le�n
//7/7/22
// Realizado en Pseint
// Ejercicios con ciclos

// *********	Realizado con el ciclo repetir	*******

//dado un grupo de n�meros naturales positivos, calcule e imprima el cubo de estos n�meros

Algoritmo cuboNumerosNaturales_CicloRepetir
	
	Definir  cantidad, numeroIngresado, cubo, contadorCantidad Como Entero;
	
	
	contadorCantidad<- 1;
	
	Escribir "�A cu�ntos numeros desea calcular el cubo?";
	Leer cantidad;
	
	cantidad<-cantidad+1;
	
	
	Repetir
		Escribir "Ingrese un numero";
		Leer numeroIngresado;
		
		cubo<-numeroIngresado^3;
		
		Escribir "El cubo del n�mero ", numeroIngresado, " es ", cubo;
		
		
		contadorCantidad<- contadorCantidad+1;
	Hasta Que contadorCantidad=cantidad
	
FinAlgoritmo