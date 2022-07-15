//Gersón Samuel Alvarado de León
//1/7/22
// Realizado en Pseint
// Evaluacion con condicionales y ciclos


//Dado el peso, altura y genero determinar la cantidad de vitaminas


Algoritmo Problema_1
	Definir peso, estatura Como Real;
	Definir genero Como Caracter;
	Definir dosis como real;
	
	// Repetir hasta que ingrese numeros positivos
	Repetir
		Escribir "Ingrese el peso";
		Leer peso;
	Hasta Que peso>0
	
	// Repetir hasta que ingrese numeros positivos
	Repetir
		Escribir "Ingrese la altura";
		Leer estatura;
	Hasta Que estatura>0
	
	// Repetir hasta que ingrese una letra correcta
	Repetir
		Escribir "Ingrese m o M para masculino o f o F para Femenino ";
		Leer genero;
	Hasta Que genero="m" o genero="M" o genero="f"  o genero="F"
	
	
	// Realizar una operacion segun las condiciones 
	Si genero="m" y genero="M" y estatura>1.60 y peso>=150 Entonces
		dosis <- (estatura*0.20)+(peso*0.80);
	SiNo
		dosis <- (estatura*0.30)+(peso*0.70);
	FinSi
	
	
	
	Si genero="f" y genero="F" y estatura>1.50 y peso>=130 Entonces
		dosis <- (estatura*0.25)+(peso*0.75);
	SiNo
		dosis <- (estatura*0.35)+(peso*0.65);
	FinSi
	
	
	Escribir " La dosis correspondiente para el peso ", peso, "lb  con una estatura de ", estatura, "m   con el genero de ", genero, " es de ", dosis;
	
	
FinAlgoritmo
