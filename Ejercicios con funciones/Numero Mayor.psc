Funcion  resultado <- numeroMayor(numeroUno, numeroDos)
	
	Definir resultado Como caracter;
	
	si numeroUno>numeroDos Entonces
		Escribir "El numero ", numeroUno," es mayor "; 
	SiNo 
		Si numeroDos>numeroUno Entonces
			Escribir "El numero ", numeroDos," es mayor "; 
		SiNo
			Si numeroUno=numeroDos Entonces
				Escribir "Los numeros son iguales";
			FinSi
		FinSi
	FinSi
	
	
FinFuncion

Algoritmo Numero_Mayor
	Definir numeroUno, numeroDos Como Entero;
	
	Repetir
	Escribir "Ingrese el primer número";
	Leer numeroUno;
	Hasta Que numeroUno>0
	
	Repetir
	Escribir "Ingrese el segundo número";
	Leer numeroDos;
	Hasta Que numeroDos>0
	
	Escribir  numeroMayor(numeroUno, numeroDos);
	
	
FinAlgoritmo
