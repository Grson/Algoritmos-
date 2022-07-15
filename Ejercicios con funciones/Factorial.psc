Funcion resultado <- calcularFactorial(valorInicial, valorFinal)
	
	
	Definir resultado Como Real;
	Definir contadorFactorial Como Entero;
	Definir resultadoFactorialAnterior, resultadoFactorial Como Entero;
	
	resultado<-0;
	resultadoFactorialAnterior<-1;
	
	Para contadorFactorial<-valorInicial Hasta valorFinal Con Paso 1 Hacer
		
		resultadoFactorial<- contadorFactorial * resultadoFactorialAnterior;
		resultadoFactorialAnterior<- resultadoFactorial;
		Escribir " Para el numero ", contadorFactorial, " el factorial es ", resultadoFactorial;
	
	FinPara
	
FinFuncion


Algoritmo Factorial
	
	Definir valorInicial, valorFinal Como Entero;
	
	valorInicial<-1;
	valorFinal<-12;
	Escribir calcularFactorial(valorInicial, valorFinal);
	
FinAlgoritmo
	