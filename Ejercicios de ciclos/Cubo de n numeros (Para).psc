//Gers�n Samuel Alvarado de Le�n
//7/7/22
// Realizado en Pseint
// Ejercicios con ciclos

// *********	Realizado con el ciclo para	*******

//dado un grupo de n�meros naturales positivos, calcule e imprima el cubo de estos n�meros

Algoritmo cuboNumerosNaturales_CicloPara
	
	Definir  cantidad, numeroIngresado, cubo, contadorCantidad Como Entero;
	Escribir "�A cu�ntos numeros desea calcular el cubo?";
	Leer cantidad;
	
	Para contadorCantidad<-1 Hasta cantidad Con Paso 1 Hacer
		Escribir "Ingrese un numero";
		Leer numeroIngresado;
		
		cubo<-numeroIngresado^3;
		
		Escribir "El cubo del n�mero ", numeroIngresado, " es ", cubo;
		
	FinPara
	
	
FinAlgoritmo
	