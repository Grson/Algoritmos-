//Gerson Samuel Alvarado de León
//14-07-222
//Evaluacion funciones


//°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°
// PRIMERA FUNCION 
// Leer fraccion 

//Leer cada numerador y denominador
SubProceso  leerNumerosIngresados (valorNmerador Por Referencia, valorDenominador Por Referencia)
	// 1. Leer fraccion
	
	//Validacion para numero positivo
	Repetir
		Escribir "Numerador";
		Escribir "Escriba un numero";
		Leer valorNmerador;
	
		si valorNmerador<0 Entonces
			Escribir "Recuerde solo se permiten numeros positivos";
		FinSi
	Hasta Que valorNmerador>=0
	
	//Asginacion del numerado para el procedimiento
	valorNmerador<-valorNmerador;
	
	//Validacion de denominar que  sea diferente de 0
	Repetir
		Escribir "Denominador";
		Escribir "Escriba un numero";
		Leer valorDenominador;
		
		//Mensaje para que el usuario reciba una retroalimentacion
		si valorDenominador<0 Entonces
			Escribir "Recuerde solo se permiten numeros mayores a 0";
		FinSi
		
	Hasta Que valorDenominador>0
	
	//Asginacion del denominar para el procedimiento
	valorDenominador<-valorDenominador;
	
	
FinSubProceso




//°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°
// SEGUNDA FUNCION 
// Escribir fraccion 


Funcion EscribirFraccion <- numerosIngresadosMostrar(numeradorUno Por Referencia,denominadorUno Por Referencia, numeradorDos Por Referencia, denominadorDos Por Referencia, simbolo)
	//2. Fraccion en pantalla
	

	Definir EscribirFraccion Como caracter;

	//Dependiendo el denominador si es 1 se deja vacio el denominador 1 de lo contrario si es mayor a 1 si se muestra
	Si denominadorUno=1 y denominadorDos>1 Entonces
		Escribir Concatenar(ConvertirATexto(numeradorUno), Concatenar( "   ", ConvertirATexto(numeradorDos)));
		Escribir " ", simbolo,"-";
		Escribir  Concatenar("    ", ConvertirATexto(denominadorDos));
	SiNo
		
		//Dependiendo el denominador si es 1 se deja vacio el denominador 2 de lo contrario si es mayor a 1 si se muestra
		Si denominadorUno>1 y denominadorDos=1 Entonces
			Escribir Concatenar(ConvertirATexto(numeradorUno), Concatenar( "   ", ConvertirATexto(numeradorDos)));
			Escribir "--", simbolo;
			Escribir ConvertirATexto(denominadorUno);
		SiNo
			
			//Dependiendo el denominador si es 1 se deja vacio el denominador 1 y 2 de lo contrario si es mayor a 1 si se muestra
			si denominadorUno==1 y denominadorDos==1 Entonces
				Escribir Concatenar(ConvertirATexto(numeradorUno), Concatenar( " + ", ConvertirATexto(numeradorDos)));
			SiNo 
				
				//Si es mayor menor a nueve se deja  con un guion (esto solo es parte de la estetica)
				Si denominadorUno<=9 y denominadorDos<=9  Entonces
					Escribir Concatenar(ConvertirATexto(numeradorUno), Concatenar("   ", ConvertirATexto(numeradorDos)));
					Escribir "-", simbolo,"-";
					Escribir Concatenar(ConvertirATexto(denominadorUno), Concatenar( "   ", ConvertirATexto(denominadorDos)));
				SiNo
					
					//Si es mayor menor a diez se deja  con dos guiones (esto solo es parte de la estetica)
					Si denominadorUno>=10 y denominadorDos>=10 Entonces
						Escribir Concatenar(ConvertirATexto(numeradorUno), Concatenar( "   ", ConvertirATexto(numeradorDos)));
						Escribir "--", simbolo,"--";
						Escribir Concatenar(ConvertirATexto(denominadorUno), Concatenar("   ", ConvertirATexto(denominadorDos)));
					FinSi
				FinSi
			FinSI
		FinSi
	FinSi
FinFuncion






//°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°
// TERCERA FUNCION 
// MCD fraccion 


Funcion calcularMCD <- MCD(operacionNumerador Por Valor, OperacionDenominador Por Valor)
	//3. Calcular el MCD de dos numerosIngresadosLeer

		
		
		Definir calcularMCD, resultadoMCD, contador, resultadoTemporalMCD, totalMCD Como entero;
		resultadoTemporalMCD<-1;
		resultadoMCD<-0;
		contador<-2;
		
		Repetir
			
			//Se valida si se puede hacer una division exacta
			Si operacionNumerador MOD contador = 0 Y OperacionDenominador MOD contador = 0  Entonces
				
				//se realiza la division en cada numero
				operacionNumerador<-operacionNumerador / contador;
				OperacionDenominador<-OperacionDenominador / contador;
				
				//El MCD sera temporal hasta que se termine el ciclo
				resultadoTemporalMCD<-resultadoTemporalMCD*contador;
				
				//El contador regrese a uno para empezar a dividir los otros numeros desde 2
				contador<-1;
				
			FinSi
			
			//Al contador se le aumentando para ir probando  con diferentes numeros y encontrar un divisor que de un reisuo 0
			contador<- contador+1;
			
			//Se repetira hasta el numero uno ya que si no es el mismo numero es un NUMERO PRIMO
		Hasta Que operacionNumerador<contador
		
		//Se guarda el resultadoMCD en una variable
		totalMCD<-resultadoTemporalMCD;
		
		//Se le asigna el valor ala funcion del MCD
		calcularMCD<-totalMCD;
		

FinFuncion




//°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°
// CUARTA FUNCION 
// Simplificar fraccion 

SubProceso Simplificacion(numeroMCD Por referencia, resultadoSimplificado Por Valor,operacionNumerador Por Valor, OperacionDenominador Por Valor  )
	

	operacionNumerador<- operacionNumerador/numeroMCD;
	OperacionDenominador<-OperacionDenominador/numeroMCD;
	
	
	
	si numeroMCD>1 Entonces

			Si OperacionDenominador>1 Entonces
					Escribir operacionNumerador;
					Escribir "--";
					Escribir OperacionDenominador;

			SiNo
			Si OperacionDenominador=1 Entonces
				Escribir operacionNumerador;
			
			FinSi
		FinSi
	SiNo
		Escribir "No se puede simplificar más";
	FinSi
	
	Escribir "Presione cualquier letra";
	Esperar Tecla;
FinSubProceso





//°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°
// QUINTA FUNCION 
// Sumar fracciones

//Opcion 1 (sumar fracciones)
Funcion Suma(numeradorUno ,denominadorUno , numeradorDos, denominadorDos, operacionNumerador Por Referencia, OperacionDenominador Por Referencia)
	
	//Se realiza la respectiva operacion de la suma
	operacionNumerador<- (numeradorUno*denominadorDos) + (denominadorUno*numeradorDos);
	OperacionDenominador <- (denominadorUno*denominadorDos);
	
	//Si el divisor es 1 no se coloca solo el numerado
	Si OperacionDenominador=1 Entonces
		Escribir operacionNumerador;
	SiNo
		//De lo contrario si se coloca el denominador
		Si OperacionDenominador>=2  Entonces
			Escribir operacionNumerador;
			Escribir "--";
			Escribir OperacionDenominador;
		FinSi
	FinSi
FinFuncion



//°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°
// SEXTA FUNCION 
// Restar fracciones
//Opcion 2 (restar fracciones)

Funcion Resta(numeradorUno ,denominadorUno , numeradorDos, denominadorDos, operacionNumerador Por Referencia, OperacionDenominador Por Referencia)
	
	//Se realiza la respectiva operacion de la resta
	operacionNumerador<- (numeradorUno*denominadorDos) - (denominadorUno*numeradorDos);
	OperacionDenominador <- (denominadorUno*denominadorDos);
	
	//Si el divisor es 1 no se coloca solo el numerador
	Si OperacionDenominador=1 Entonces
		Escribir operacionNumerador;
	SiNo
		//De lo contrario si se coloca el denominador
		Si OperacionDenominador>=2  Entonces
			Escribir operacionNumerador;
			Escribir "--";
			Escribir OperacionDenominador;
		FinSi
	FinSi
FinFuncion



//°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°
// SEPTIMA FUNCION 
// Multiplicar fracciones

Funcion Multiplicar(numeradorUno ,denominadorUno , numeradorDos, denominadorDos, operacionNumerador Por Referencia, OperacionDenominador Por Referencia)
	
	//Se realiza la respectiva operacion de la multiplicacion
	operacionNumerador<- (numeradorUno*numeradorDos);
	OperacionDenominador <- (denominadorUno*denominadorDos);
	
	//Si el divisor es 1 no se coloca solo el numerador
	Si OperacionDenominador=1 Entonces
		Escribir operacionNumerador;
	SiNo
		//De lo contrario si se coloca el denominador
		Si OperacionDenominador>=2  Entonces
			Escribir operacionNumerador;
			Escribir "--";
			Escribir OperacionDenominador;
		FinSi
	FinSi
FinFuncion






//°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°
// OCTAVA FUNCION 
// DIVIDIR fracciones
Funcion Dividir(numeradorUno ,denominadorUno , numeradorDos, denominadorDos, operacionNumerador Por Referencia, OperacionDenominador Por Referencia)
	
	//Se realiza la respectiva operacion de la multiplicacion
	operacionNumerador<- (numeradorUno*denominadorDos);
	OperacionDenominador <- (denominadorUno*numeradorDos);
	
	//Si el divisor es 1 no se coloca solo el numerador
	Si OperacionDenominador=1 Entonces
		Escribir operacionNumerador;
	SiNo
		//De lo contrario si se coloca el denominador
		Si OperacionDenominador>=2  Entonces
			Escribir operacionNumerador;
			Escribir "--";
			Escribir OperacionDenominador;
		FinSi
	FinSi
FinFuncion



Algoritmo Fracciones
	
	//Declaracion de variables
	Definir operacionNumerador, OperacionDenominador Como Real;
	Definir numeradorUno, denominadorUno,numeradorDos,denominadorDos, valorNmerador,  valorDenominador, resultadoSimplificado, numeroMCD Como Entero;
	Definir letraIngresada, simbolo Como Caracter;
	
	
	//Inicializar varialbes
	operacionNumerador<-0;
	OperacionDenominador<-0;
	numeradorUno<-0;
	denominadorUno<-0;
	numeradorDos<-0;
	denominadorDos<-0;
	simbolo<-"";
	resultadoSimplificado<-1;
	numeroMCD<-0;
	
	Escribir "************************************";
	Escribir "			 Fracciones ";
	Escribir "************************************";
	
	
	Repetir
		
	Limpiar Pantalla;
	Escribir "Ingrese A para sumar dos fracciones";
	Escribir "Ingrese B para restar dos fracciones";
	Escribir "Ingrese C para multiplicar dos fracciones";
	Escribir "Ingrese D para dividir dos fracciones";
	Escribir "Ingrese E para salir";
	
	Escribir "Debe de ingresar una letra según la operacion que desea calcular";
	Leer letraIngresada;

	
	si letraIngresada="A" Entonces
		Escribir "~~~~~~~~~~~ Primera fraccion ~~~~~~~~~~~~~~~~";
		leerNumerosIngresados(numeradorUno, denominadorUno );
		Escribir "~~~~~~~~~~~ Segunda fraccion ~~~~~~~~~~~~~~~~";
		leerNumerosIngresados(numeradorDos, denominadorDos );
		simbolo<-" + ";
		

		Escribir "~~~~~~~~~~~ Fraccion ingresada ~~~~~~~~~~~~~~~~";
		Escribir numerosIngresadosMostrar(numeradorUno ,denominadorUno , numeradorDos, denominadorDos, simbolo);
		
		
		Escribir "~~~~~~~~~~~ Resultado ~~~~~~~~~~~~~~~~";
		Suma(numeradorUno ,denominadorUno , numeradorDos, denominadorDos, operacionNumerador, OperacionDenominador);
		
		Escribir "~~~~~~~~~~~ MCD ~~~~~~~~~~~~~~~~";
		numeroMCD<-MCD(operacionNumerador, OperacionDenominador);
		Escribir numeroMCD;
		
		Escribir "~~~~~~~~~~~ Simplificación ~~~~~~~~~~~~~~~~";
		Simplificacion(numeroMCD, resultadoSimplificado,operacionNumerador, OperacionDenominador  );
			
	
		SiNo
			si letraIngresada="B" Entonces
				Escribir "~~~~~~~~~~~ Primera fraccion ~~~~~~~~~~~~~~~~";
				leerNumerosIngresados(numeradorUno, denominadorUno );
				Escribir "~~~~~~~~~~~ Segunda fraccion ~~~~~~~~~~~~~~~~";
				leerNumerosIngresados(numeradorDos, denominadorDos );
				simbolo<-" - ";
				
				
				Escribir "~~~~~~~~~~~ Fraccion ingresada ~~~~~~~~~~~~~~~~";
				Escribir numerosIngresadosMostrar(numeradorUno ,denominadorUno , numeradorDos, denominadorDos, simbolo);
				
				
				Escribir "~~~~~~~~~~~ Resultado ~~~~~~~~~~~~~~~~";
				Resta(numeradorUno ,denominadorUno , numeradorDos, denominadorDos, operacionNumerador, OperacionDenominador);
				
				Escribir "~~~~~~~~~~~ MCD ~~~~~~~~~~~~~~~~";
				numeroMCD<-MCD(operacionNumerador, OperacionDenominador);
				Escribir numeroMCD;
				
				Escribir "~~~~~~~~~~~ Simplificación ~~~~~~~~~~~~~~~~";
				Simplificacion(numeroMCD, resultadoSimplificado,operacionNumerador, OperacionDenominador  );
				
				
				
			SiNo
				si letraIngresada="C" Entonces
					
						Escribir "~~~~~~~~~~~ Primera fraccion ~~~~~~~~~~~~~~~~";
						leerNumerosIngresados(numeradorUno, denominadorUno );
						Escribir "~~~~~~~~~~~ Segunda fraccion ~~~~~~~~~~~~~~~~";
						leerNumerosIngresados(numeradorDos, denominadorDos );
						simbolo<-" * ";
						
						
						Escribir "~~~~~~~~~~~ Fraccion ingresada ~~~~~~~~~~~~~~~~";
						Escribir numerosIngresadosMostrar(numeradorUno ,denominadorUno , numeradorDos, denominadorDos, simbolo);
						
						
						Escribir "~~~~~~~~~~~ Resultado ~~~~~~~~~~~~~~~~";
						Multiplicar(numeradorUno ,denominadorUno , numeradorDos, denominadorDos, operacionNumerador, OperacionDenominador);
						
						Escribir "~~~~~~~~~~~ MCD ~~~~~~~~~~~~~~~~";
						numeroMCD<-MCD(operacionNumerador, OperacionDenominador);
						Escribir numeroMCD;
						
						Escribir "~~~~~~~~~~~ Simplificación ~~~~~~~~~~~~~~~~";
						Simplificacion(numeroMCD, resultadoSimplificado,operacionNumerador, OperacionDenominador  );
					SiNo
						si letraIngresada="D" Entonces
							
							Escribir "~~~~~~~~~~~ Primera fraccion ~~~~~~~~~~~~~~~~";
							leerNumerosIngresados(numeradorUno, denominadorUno );
							Escribir "~~~~~~~~~~~ Segunda fraccion ~~~~~~~~~~~~~~~~";
							leerNumerosIngresados(numeradorDos, denominadorDos );
							simbolo<-" / ";
							
							
							Escribir "~~~~~~~~~~~ Fraccion ingresada ~~~~~~~~~~~~~~~~";
							Escribir numerosIngresadosMostrar(numeradorUno ,denominadorUno , numeradorDos, denominadorDos, simbolo);
							
							
							Escribir "~~~~~~~~~~~ Resultado ~~~~~~~~~~~~~~~~";
							Dividir(numeradorUno ,denominadorUno , numeradorDos, denominadorDos, operacionNumerador, OperacionDenominador);
							
							Escribir "~~~~~~~~~~~ MCD ~~~~~~~~~~~~~~~~";
							numeroMCD<-MCD(operacionNumerador, OperacionDenominador);
							Escribir numeroMCD;
							
							Escribir "~~~~~~~~~~~ Simplificación ~~~~~~~~~~~~~~~~";
							Simplificacion(numeroMCD, resultadoSimplificado,operacionNumerador, OperacionDenominador  );
							
						FinSi
					
				FinSi
			FinSi
	FinSi
Hasta Que letraIngresada="E"
FinAlgoritmo
