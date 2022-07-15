//Realizar un Algoritmo  que permita ingresar una cadena de caracteres e imprimir
// 1. Longitud de cadenas
// 2. La última letra de la cadena
// 3. Imprimir cada palabra en lineas diferentes, considerando el espacio entre cada palabra
// 4. Contar cuantas "a" y cuantas "u" hay en la cadena


Algoritmo EjercicioDeCaracteres
	
	Definir salir, concatenarPalabras, palabrasIngresadas,SubcadenaPalabraIngresada, letraInicial, espacioFinal, cadenaUno, cadenaDos Como Caracter;
	Definir  LongitudPalabrasIngresadas,iteradorLetras, LongitudReferenteASubcadeba, contadorA, contadorU Como Entero;
	
	contadorA<-0;
	contadorU<-0;
	concatenarPalabras<-"";
	salir<-"";
	
	Escribir "Ingrese las palabras que desee";
	Leer palabrasIngresadas;
	
	//Se inicia la variable
	LongitudPalabrasIngresadas<-0;
	
	//Se mide la longitud de la palabra ingresada
	LongitudPalabrasIngresadas<-Longitud(palabrasIngresadas);
	
	
	
	//Muestra en pantalla la longitud
	Escribir "1.) La longitud de la palbra ingrese es ", LongitudPalabrasIngresadas; 
	
	//Las cadenas empiezan a estar enumeradas en 0 por eso la longitud dara un numero mayor (debido a esto se debe de restar uno a la longitud)
	Escribir "2.) La última letra de la cadena es: ", Subcadena(palabrasIngresadas,LongitudPalabrasIngresadas-1,LongitudPalabrasIngresadas-1);
	
	
	Escribir "3.) Cada palabra en lineas diferentes";
	
	//Las cadenas empiezan a estar enumeradas en 0 por eso la longitud referente dara un numero mayor (debido a esto se debe de restar uno a la longitud)
	LongitudReferenteASubcadeba<-LongitudPalabrasIngresadas-1;
	
	//se recorrerá cada letra hasta allegar a la ultima con la longitud
	Para iteradorLetras<-0 Hasta LongitudReferenteASubcadeba Con Paso 1 Hacer
	
		//Se recorre caracter por caracter y si en ese espacio es DIFERENTE a un espacio es porque si hay una letra y se coloca sin saltar
		si Subcadena(palabrasIngresadas,iteradorLetras,iteradorLetras) <> " " Entonces
			letraInicial<-Subcadena(palabrasIngresadas,iteradorLetras,iteradorLetras);
			Escribir letraInicial Sin Saltar;
		FinSi
		
		//Es SIMILAR al anterior
		//Se recorre caracter por caracter y si en ese espacio es igual a un espacio es porque no hay una letra y se realiza un salto de linea para dejar espacio entre palabras
		si Subcadena(palabrasIngresadas,iteradorLetras,iteradorLetras) = " " Entonces
			Escribir " ";
		FinSi
	
	FinPara
	Escribir " ";
	
	
	
	Escribir "Contar cuantas a y cuantas u hay en la cadena ";
	Para iteradorLetras<-0 Hasta LongitudReferenteASubcadeba Con Paso 1 Hacer
		
		//Es SIMILAR a los ciclos anteriores
		//Se recorre caracter por caracter y si en ese espacio es igual a (a) es porque hay una letra a y al contador se le suma uno
		si Subcadena(palabrasIngresadas,iteradorLetras,iteradorLetras) = "a" Entonces
			contadorA<-contadorA+1;
		FinSi
		
		//Es SIMILAR a los ciclos anteriores
		//Se recorre caracter por caracter y si en ese espacio es igual a (u) es porque hay una letra u y al contador se le suma uno
		si Subcadena(palabrasIngresadas,iteradorLetras,iteradorLetras) = "u" Entonces
			contadorU<-contadorU+1;
		FinSi
		
	FinPara
	
	
	Escribir "cantidad de a: ", contadorA;
	Escribir "cantidad de u: ", contadorU;
	
	
	Escribir "------------------------------------------------";
	Escribir "Concatenar cadenas";
	
	
	
	Mientras salir<>"ñ" Hacer
		
		Escribir "Ingrese la primera cadena";
		Leer cadenaUno;
		//Se concatena una palabra y se coloca a la parde otra
		//Ejemplo
		// 1. Primera vez
		//Gerson 
		//2. En la segunda vez ya tiene Gerson Alvarado 
		//ahora coloca esta otra a la par
		//Gerson Alvarado de
		
		concatenarPalabras<- Concatenar(concatenarPalabras, Concatenar( cadenaUno, " "));
		
		
		Escribir "Ingrese la segunda cadena";
		Leer cadenaDos;
		concatenarPalabras<- Concatenar(concatenarPalabras, Concatenar( cadenaDos, " "));
		//Se concatena una palabra y se coloca a la parde otra ya tiene Gerson ahora esta palabra se coloca a la par
		//Ejemplo
		// 1. Primera vez
		//Gerson Alvarado
		
		
		Escribir "Ingrese ñ para salir si no ingrese cualquier letra";
		Leer salir;
		
	FinMientras
	
	
	Escribir concatenarPalabras;
	
	
FinAlgoritmo
