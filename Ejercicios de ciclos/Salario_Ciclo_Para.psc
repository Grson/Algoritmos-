//Gers�n Samuel Alvarado de Le�n
//7/7/22
// Realizado en Pseint
// Ejercicios con ciclos

// *********	Realizado con el ciclo para	*******

//Un profesor tiene un salario inicial de $1500, y recibe un incremento de 10 % anual durante 6 a�os. �Cu�l es su salario al cabo de 6
//a�os? �Qu� salario ha recibido en cada uno de los 6 a�os?



Algoritmo Salario_Ciclo_Para
	
	Definir  contadoSalario, tiempoIncremento Como Entero;
	Definir incremento, total, nuevoSalario, salarioInicial Como Real;
	
	salarioInicial <- 1500;
	tiempoIncremento <- 6;
	incremento <- 0.10;
	nuevoSalario <- 0;

	
	Para contadoSalario<-1 Hasta tiempoIncremento Con Paso 1 Hacer
		nuevoSalario <- salarioInicial*incremento;
		total <- salarioInicial + nuevoSalario;

		
		Escribir " A�o #", contadoSalario, " es de ", total;
		salarioInicial <- total;
		
		
	FinPara
	
	Escribir " Por 6 a�os el salario es ", total;
	
	
	
	
FinAlgoritmo
