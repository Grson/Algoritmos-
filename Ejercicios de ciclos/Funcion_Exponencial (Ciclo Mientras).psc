//Gers�n Samuel Alvarado de Le�n
//7/7/22
// Realizado en Pseint
// Ejercicios con ciclos

// *********	Realizado con el ciclo Mientras	*******

//Obtener una funci�n exponencial
// e^x = 1 + x/1! + x^2/2! ...


Algoritmo Funcion_Exponencial_Ciclo_Mientras
	
	Definir repeticiones, x, valorInicial, factorial, exponente, contadorRepeticiones Como Entero;
	Definir e Como Real;
	
	//Se inician las variables
	e<-0;
	valorInicial <- 1;
	e <- e + valorInicial;
	factorial<-1;
	contadorRepeticiones<-1;
	
	
	Escribir "Cuantas veces desea que se repita";
	Leer repeticiones;
	
	Escribir "Escriba el valor de x";
	leer x;
	
	Mientras contadorRepeticiones<=repeticiones Hacer
		//El exponente es igual al contador ya que en la formula va de 1 en 1
		exponente <- contadorRepeticiones;
		
		//�C�mo se calcula el factorial?
		//El factorial es igual a factorial = 1 y contadorRepeticiones = 1
		//el factorial de 1 
		// Es = 1*1
		
		//el factorial de 2 
		//el factorial almacena ese valor factorial = 1 y contadorRepeticiones = 2
		// Es = 1*2
		
		//el factorial de 3 
		//el factorial almacena ese valor factorial = 2 y contadorRepeticiones = 3
		// Es = 2*3
		
		// factorial = 1 y contadorRepeticiones = 1
		factorial <- factorial*contadorRepeticiones;
		
		//Se realiza la f�rmula
		e<-e+3^exponente/factorial;
		
		
		contadorRepeticiones<-contadorRepeticiones+1;
	FinMientras
	
	
	
	
	Escribir " El resultado de la funci�n exponencial es ", e;
	
	
	
	
FinAlgoritmo
