//Gersón Samuel Alvarado de León
//7/7/22
// Realizado en Pseint
// Ejercicios con ciclos

// *********	Realizado con el ciclo repetir	*******

//Un profesor tiene un salario inicial de $1500, y recibe un incremento de 10 % anual durante 6 años. ¿Cuál es su salario al cabo de 6
//años? ¿Qué salario ha recibido en cada uno de los 6 años?



Algoritmo Salario_Ciclo_Repetir
	
	
	Definir  contadoSalario, tiempoIncremento Como Entero;
	Definir incremento, total, nuevoSalario, salarioInicial Como Real;
	contadoSalario<-0;
	salarioInicial <- 1500;
	tiempoIncremento <- 6;
	incremento <- 0.10;
	nuevoSalario <- 0;
	
	
	
	Repetir
		nuevoSalario <- salarioInicial*incremento;
		total <- salarioInicial + nuevoSalario;
		
		
		Escribir " Año #", contadoSalario, " es de ", total;
		salarioInicial <- total;
		
		contadoSalario <- contadoSalario + 1;
	Hasta Que contadoSalario=tiempoIncremento
	
	Escribir " Por 6 años el salario es ", total;
	
FinAlgoritmo

