Funcion resultadoMCD <-operacionMCD(numeroUno, numeroDos, numeroTres, numeroCuatro)
	
	
	Definir resultadoMCD, contador, resultadoTemporalMCD Como entero;
	resultadoTemporalMCD<-1;
	resultadoMCD<-0;
	contador<-2;
	
	Repetir
		
			
			Si numeroUno MOD contador = 0 Y numeroDos MOD contador = 0 Y numeroTres MOD contador = 0 Y numeroCuatro MOD contador = 0 Entonces
	
				numeroUno<-numeroUno / contador;
				numeroDos<-numeroDos / contador;
				numeroTres<- numeroTres / contador;
				numeroCuatro<-  numeroCuatro / contador;
				resultadoTemporalMCD<-resultadoTemporalMCD*contador;
				contador<-1;
			
			FinSi

		contador<- contador+1;
	Escribir contador;
		
	Hasta Que numeroUno<contador
	
	totalMCD<-resultadoTemporalMCD;
	resultadoMCD<-totalMCD;
	
FinFuncion

Algoritmo MCD
	
	Definir numeroUno, numeroDos, numeroTres, numeroCuatro Como Real;
	
	Escribir "ingrese el primer numero";
	leer numeroUno;
	
	Escribir "ingrese el segundo numero";
	leer numeroDos;
	
	Escribir "ingrese el tercer numero";
	leer numeroTres;
	
	Escribir "ingrese el cuarto numero";
	leer numeroCuatro;
	
	
	Escribir "El MCD es ", operacionMCD(numeroUno, numeroDos, numeroTres, numeroCuatro);
	
FinAlgoritmo
	