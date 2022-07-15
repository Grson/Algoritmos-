//Gerson Samuel Alvarado de León
//11-07-222
//Evaluacion funciones


Funcion conversionBinario <- convertirDecimalBinario(numeroEntero)
	

	Definir numeroDividoDos, binario, Residuo,contadorNumerosBinarios Como Entero;
	Definir totalNumeroBinario,numerosBinariosInversos, conversionBinario como Caracter;
	
	
	totalNumeroBinario<-"";
	numerosBinariosInversos<-"";
	binario<-0;

	
	
	Repetir
		
		//Para encontrar el binario de obtiene el residuo
		binario<- numeroEntero mod 2;
		
		//Se almacena el Residuo
		si binario=1 Entonces
			totalNumeroBinario<-Concatenar(totalNumeroBinario, ConvertirATexto(binario));
			
		SiNo
			totalNumeroBinario<-Concatenar(totalNumeroBinario, ConvertirATexto(binario));
			
		FinSi
	
		
		//Se divide la cantidad para salir del ciclo 
		numeroEntero<-trunc(numeroEntero/2);
		
		//Cuando se logre tener 0 se termina
	Hasta Que numeroEntero=0
	
	
	//Se invierte las posiciones ya que el binario es lo que se obtuvo pero el ultimo sera el primero
	para contadorNumerosBinarios<-Longitud(totalNumeroBinario) hasta 0 Con Paso -1 Hacer
		numerosBinariosInversos<-Concatenar(numerosBinariosInversos, Subcadena(totalNumeroBinario,contadorNumerosBinarios,contadorNumerosBinarios));
	FinPara
	
	conversionBinario<-numerosBinariosInversos;
	
	
FinFuncion





Funcion conversionOctal <- convertirDecimalOctal(numeroEntero)
	
	
	Definir numeroDividoOcho, octal,contadorNumeroOctal Como Entero;
	Definir totalNumeroOctal,numerosOctalesInversos, conversionOctal como Caracter;
	
	
	totalNumeroOctal<-"";
	numerosOctalesInversos<-"";

	
	
	
	Repetir
		
		//Para encontrar el octal de obtiene el residuo
		octal<- numeroEntero mod 8;
		
		//Se almacena el residuo
		totalNumeroOctal<-Concatenar(totalNumeroOctal, ConvertirATexto(octal));
		
		//SE divide para poder salir del ciclo cuando tenga el valor de 0
		numeroEntero<-trunc(numeroEntero/8);
		
	Hasta Que numeroEntero=0
	
	//Se invierte las posiciones ya que el octal es lo que se obtuvo pero el ultimo sera el primero
	para contadorNumeroOctal<-Longitud(totalNumeroOctal) hasta 0 Con Paso -1 Hacer
		numerosOctalesInversos<-Concatenar(numerosOctalesInversos, Subcadena(totalNumeroOctal,contadorNumeroOctal,contadorNumeroOctal));
	FinPara
	
	conversionOctal<-numerosOctalesInversos;
	
	
FinFuncion



Algoritmo Decimal_A_Binario_O_Octal
	
	Definir numeroEntero Como Real;
	
	
	Repetir
		Escribir "Ingrese un numero";
		leer numeroEntero;
	Hasta Que numeroEntero>=0 y numeroEntero<=100
	
	
	
	
	Escribir convertirDecimalOctal(numeroEntero);
	
	
FinAlgoritmo	