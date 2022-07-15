//Gersón Samuel Alvarado de León
//1/7/22
// Realizado en Pseint
// Evaluacion con condicionales y ciclos


//Hay "N" diputados y que se han presentado "M" candidatos (máximo 5), Indicar el diputado electo por mayoría simple o empate si este existiese.


Algoritmo Proble_6
	
	
	
	empate <- 0;
	numeroMayor<-0;
	
	
	
	Escribir "ingrese la cantidad de diputados";
	Leer cantidaDiputados;
	
	Repetir
		Escribir "Ingrese la cantidad de candidatos";
		Leer cantidadCandidatos;
	Hasta Que cantidadCandidatos>0 y cantidadCandidatos<=5
	
	
	Escribir "Los candidatos son los siguientes ";
	Para numeroDiputado<-1 Hasta cantidadCandidatos Con Paso 1 Hacer
		
		Escribir " Candidato #", numeroDiputado;
		
	FinPara
	
	
	
	
	
	Para contadorDiputados<-1 Hasta cantidaDiputados Con Paso 1 Hacer
		
			
			
			Repetir
				Escribir "Diputado #", contadorDiputados, " Debe de elegir un numero entre 1 y ", cantidadCandidatos;
				Leer eleccion;
			Hasta Que  eleccion>0 y eleccion<=cantidadCandidatos
			
			//Si elige 1 el voto es para el candidato uno
			si eleccion=1 Entonces
				votosCandidatoUno <- votosCandidatoUno + 1;
				
				//Comparacion para tener el numero que represente la mayor cantidad de voto que recibio
				si votosCandidatoUno>numeroMayor Entonces
					numeroMayor<- votosCandidatoUno;
				FinSi
			
			SiNo
				Si eleccion=2 Entonces
					votosCandidatoDos <- votosCandidatoDos + 1;
					
					//Comparacion para tener el numero que represente la mayor cantidad de voto 
					si votosCandidatoDos>numeroMayor Entonces
						numeroMayor<- votosCandidatoDos;
					FinSi
					
				SiNo
					Si eleccion=3 Entonces
						votosCandidatoTres <- votosCandidatoTres +1;
						
						//Comparacion para tener el numero que represente la mayor cantidad de voto 
						si votosCandidatoTres>numeroMayor Entonces
							numeroMayor<- votosCandidatoTres;
						FinSi
						
					SiNo
						Si eleccion=4 Entonces
							votosCandidatoCuatro <- votosCandidatoCuatro +1;
							
							
							//Comparacion para tener el numero que represente la mayor cantidad de voto 
							si votosCandidatoCuatro>numeroMayor Entonces
								numeroMayor<- votosCandidatoCuatro;
							FinSi
							
							
						SiNo
							Si eleccion=5 Entonces
								votosCandidatoCinco <- votosCandidatoCinco +1;	
								
								
								//Comparacion para tener el numero que represente la mayor cantidad de voto 
								si votosCandidatoCinco>numeroMayor Entonces
									numeroMayor<- votosCandidatoCinco;
								FinSi
								
								
							FinSi
						FinSi
					FinSi
				FinSi
			FinSi
			
			
		
	FinPara
	
	
	
	//Con la compracion anterior de numeroMayor se tiene el numero en cual se compará para saber si hubo empate o si hay ganador
	numeroMaximoDeVotos<- numeroMayor;
	
	
	//Compraciones para determinar el empate
	si votosCandidatoUno>=numeroMaximoDeVotos Entonces
		empate<-empate+1;
	FinSi
	
	
	si votosCandidatoDos>=numeroMaximoDeVotos Entonces
		empate<-empate+1;
	FinSi
	
	
	si votosCandidatoTres>=numeroMaximoDeVotos Entonces
		empate<-empate+1;
	FinSi
	
	
	
	si votosCandidatoCuatro>=numeroMaximoDeVotos Entonces
		empate<-empate+1;
	FinSi
	
	
	si votosCandidatoCinco>=numeroMaximoDeVotos Entonces
		empate<-empate+1;
	FinSi
	
	
	
	
	
	
	//Se determina si hay empate
	si empate>=2 Entonces
		Escribir " Hay un empate entre diputado ";
		
		
		//Se hacen las mismas compraciones  pero ahora si se escribe el numero del candidato para saber quienes fueron empatados
		si votosCandidatoUno>=numeroMaximoDeVotos Entonces
			Escribir " -  1  -" ;
		FinSi
		
		
		
		
		
		si votosCandidatoDos>=numeroMaximoDeVotos Entonces
			Escribir " -  2  -" ;
		FinSi
		
		
		
		si votosCandidatoTres>=numeroMaximoDeVotos Entonces
			Escribir " -  3  -"; 
		FinSi
		
		
		
		si votosCandidatoCuatro>=numeroMaximoDeVotos Entonces
			Escribir " -  4  -"; 
		FinSi
		
		
		
		si votosCandidatoCinco>=numeroMaximoDeVotos Entonces
			Escribir " -  5  -"; 
		FinSi
		
		
		
		
		//Despues de determinar y si no hubo empate entonces si hubo ganador
	SiNo
		
		
		Escribir " El elegido es el diputado #";
		
		// Se hacen las mismas compraciones pero ahora solo se mostrar el candidato ganador
		si votosCandidatoUno>=numeroMaximoDeVotos Entonces
			Escribir " -  1  -"; 
			
		FinSi
		
		
		
		
		
		si votosCandidatoDos>=numeroMaximoDeVotos Entonces
			Escribir " -  2  -";
			
		FinSi
		
		
		
		
		si votosCandidatoTres>=numeroMaximoDeVotos Entonces
			Escribir " -  3  -" ;
		FinSi
		
		
		
		si votosCandidatoCuatro>=numeroMaximoDeVotos Entonces
			Escribir " -  4  -" ;
		FinSi
		
		
		
		si votosCandidatoCinco>=numeroMaximoDeVotos Entonces
			Escribir " -  5  -" ;
		FinSi
		
	FinSi
	
	

FinAlgoritmo
