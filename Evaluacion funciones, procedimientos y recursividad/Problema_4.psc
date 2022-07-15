//Gerson Samuel Alvarado de León
//11-07-222
//Evaluacion funciones


Funcion retorno <- numero_A_Catalan (numeroIngresado)
	Definir retorno Como Real;
	
	si numeroIngresado=0 Entonces
		//si es 0 se tiene que retorno vale 1
		retorno<-1;
	SiNo
		si numeroIngresado>0 Entonces
			//El problema nos da la formula
			//Con la formula respectiva se va a encontrar un numero mayor a 0
			retorno<- ( (2*(2*numeroIngresado -1))  /  (numeroIngresado+1)) * numero_A_Catalan (numeroIngresado-1);
		FinSi
	FinSi
	
FinFuncion



Algoritmo NumerosCatalan
	
	Definir numeroIngresado Como Entero;
	
	
	Escribir "Ingrese un numero";
	Leer numeroIngresado;
	
	Escribir "El numero ",numeroIngresado," en catalán es: ", numero_A_Catalan(numeroIngresado);
	
	
FinAlgoritmo
