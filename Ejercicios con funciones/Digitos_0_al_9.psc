Funcion Digito <- validarDigito(digitoIngresado Por referencia)
	Definir Digito Como Logico;
	
	si digitoIngresado>=0 y digitoIngresado<=9 Entonces
		Digito<-Verdadero;
	SiNo
		Digito<-Falso;
		
	FinSi
	
FinFuncion


Algoritmo Digitos_0_al_9
	
	Definir digitoIngresado Como Entero;
	
	Escribir "Ingrese un digito";
	Leer digitoIngresado;
	
	Escribir validarDigito(digitoIngresado);
	
FinAlgoritmo
	