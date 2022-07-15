//Gerson Samuel Alvarado de León
//11-07-222
//Evaluacion funciones


Funcion conversionSegundos <- HorasMinutosSegundos ( horaIngresados Por Valor, minutosIngresados Por Valor, segundosIngresados Por Valor)
	Definir conversionSegundos Como Real;
	
	//Respectiva conversion para saber los segundosIngresados
	//Las horas se deben multiplicar por 3600
	//Los minutos se deben multiplicar por 60
	//Los segundos se deben sumar 
	conversionSegundos<-(3600*horaIngresados) + (60*minutosIngresados) + (segundosIngresados);
FinFuncion
	


Funcion convertirHorasMinutosSegundos <- conversion (segundosIngresadosSegundaFuncion Por Valor)
	Definir convertirHorasMinutosSegundos, segundosTotal, minutosTotal, horasTotal, tiempoTotal Como Real;
	minutosTotal<-0;
	segundosTotal<-0;
	horasTotal<-0;

	tiempoTotal<-segundosIngresadosSegundaFuncion;
	
	Repetir
		
		//Dependiendo de la cantidad se realiza un resta para encontrar el tiempo respectivo
		si tiempoTotal>=3600 Entonces
			horasTotal<-horasTotal+1;
			tiempoTotal<-tiempoTotal-3600;
		FinSi
		
		si tiempoTotal>=60 y tiempoTotal<3600 Entonces
			minutosTotal<-minutosTotal+1;
			tiempoTotal<- tiempoTotal-60;
		FinSi
		
		si tiempoTotal>0 y tiempoTotal<60 Entonces
			segundosTotal<-segundosIngresadosSegundaFuncion;
			tiempoTotal<-tiempoTotal-tiempoTotal;
		FinSi
		
		//Hasta tener los segundos, minutos y horas se termina el ciclo
	Hasta Que tiempoTotal=0
	
	Escribir segundosTotal, " segundo  (s) ", minutosTotal, " minuto (s) ",  horasTotal, " horas (s) ";
	
FinFuncion

Algoritmo conversionDeTiempo
	Definir opcionIngresada Como Entero;;
	Definir horaIngresados, minutosIngresados, segundosIngresados, segundosIngresadosSegundaFuncion Como Real;
	
	Repetir
		Limpiar Pantalla;
		Escribir " -------------------------------- ";
		Escribir "	    	Ingrese una opción		  ";
		Escribir " Ingrese 1 para ingresar horas minutos y segundos y se convertirá en segundos";
		Escribir " Ingrese 2 para ingresar segundos y se convertirá en horas minutos y segundos";
		Escribir " Ingrese 3 para salir ";
		Leer opcionIngresada;
		Escribir " -------------------------------- ";
		
		
		//Segun la opcion ingresada se hace lo siguiente
		Segun opcionIngresada Hacer
			1:
				Limpiar Pantalla;
				Escribir "Ingrese la cantidad de horas";
				Leer horaIngresados;
				
				Escribir "Ingrese la cantidad de minutos";
				Leer minutosIngresados;
				
				Escribir "Ingrese la cantidad de segundos";
				Leer segundosIngresados;
				
				Escribir "El total de segundos es: ",  HorasMinutosSegundos(horaIngresados, minutosIngresados, segundosIngresados) ," segundos ";
				Escribir "Presione una tecla";
				Esperar Tecla;
				
			2:
				Escribir "Ingrese la cantidad de segundos";
				Leer segundosIngresadosSegundaFuncion;
				
				Escribir "El total es ", conversion(segundosIngresadosSegundaFuncion);
				Escribir "Presione una tecla";
				Esperar Tecla;
				
			3:
				Limpiar Pantalla;
				Escribir " x Saliendo ";
			De Otro Modo:
				Limpiar Pantalla;
				Escribir "Ingrese una opción valida";
				Escribir "Presione una tecla";
				Esperar Tecla;
		FinSegun
		
	//Se repite para ingresar una opcion valida
	Hasta Que opcionIngresada=3
	
FinAlgoritmo
