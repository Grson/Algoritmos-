//Gersón Samuel Alvarado de León
//7/7/22
// Realizado en Pseint
// Ejercicios con ciclos

// *********	Realizado con el ciclo mientras	*******



//cantidad de dinero hay en un monedero, considerando que se tienen monedas de diez, cinco y un peso, y billetes de diez, veinte y cincuenta pesos

Algoritmo Monedero_CicloMientras
	
	
	

		
		Definir cantidadBilleteDiez, cantidadBilleteVeinte, cantidadBilleteCincuenta, cantidadMonedaUno, cantidadMonedaCinco, salir, cantidadMonedaDiez, total, contadorMonedero, denominacionMoneda, contadorMonedaDiez, contadorMonedaCinco, contadorMonedaUno, denominacionBillete, contadorBilleteDiez,contadorBilleteCincuenta, contadorBilleteVeinte Como Entero;
		Definir tipo Como Caracter;
		
		
		//Se inicializan las variables
		contadorMonedaDiez<-0;
		contadorMonedaCinco<-0;
		contadorMonedaUno<-0;
		contadorBilleteDiez<-0;
		contadorBilleteVeinte<-0;
		contadorBilleteCincuenta<-0;
		total<-0;
		cantidadMonedaDiez<-0;
		contadorMonedero<-2;
		
		
		//El ciclo se repetiras mientras sea diferente de 1
		Mientras contadorMonedero<>1 Hacer
			Escribir " °°°°°°°°°°°°°°°°°°°°°° Para salir ingrese 0 °°°°°°°°°°°°°°°°°°°°° ";
			Escribir "De lo contrario ingrese otro numero";
			Leer salir;
			
			
			//Si es mayor a 0 se siguen pidiendo que ingrese valores
			si salir>0 Entonces
				
				
				Escribir " Escriba m o M para ingresar Moneda o b o B para billete ";
				Leer tipo;
				
				
				
				Si tipo="m" o tipo="M" Entonces
					Escribir "Ingrese la denominacion de la moneda (moneda de 10, moneda de 5 o moneda de 1)";
					Escribir " -------		Solo ingrese el numero		---------";
					Leer denominacionMoneda;
					
					
					
					Si denominacionMoneda=10 Entonces
						Escribir "Ingrese la cantidad";
						Leer cantidadMonedaDiez;
						//Dependiendo de la cantidad se van sumando para luego multiplicarlo
						contadorMonedaDiez <- contadorMonedaDiez + cantidadMonedaDiez;
						Escribir "Cantidad añadida al monedero";
					SiNo
						si denominacionMoneda=5 Entonces
							Escribir "Ingrese la cantidad";
							Leer cantidadMonedaCinco;
							Escribir "Cantidad añadida al monedero";
							//Dependiendo de la cantidad se van sumando para luego multiplicarlo
							contadorMonedaCinco<- contadorMonedaCinco+cantidadMonedaCinco;
							
						SiNo
							Si denominacionMoneda=1 Entonces
								Escribir "Ingrese la cantidad";
								Leer cantidadMonedaUno;
								Escribir "Cantidad añadida al monedero";
								//Dependiendo de la cantidad se van sumando para luego multiplicarlo
								contadorMonedaUno <- contadorMonedaUno+cantidadMonedaUno;
								Escribir "Cantidad añadida al monedero";
							SiNo
								Escribir "Debe ingresar 10,5 o 1";
								contadorMonedero <- contadorMonedero + 1;
								
							FinSi
						FinSi
					FinSi
					
					
				SiNo
					si tipo="b" o tipo="B" Entonces
						Escribir "Ingrese la denominacion del billete (billete de 10, billete de 20 o billete de 50)";
						Escribir " -------		Solo ingrese el numero		---------";
						Leer denominacionBillete;
						
						
						Si denominacionBillete=10 Entonces
							Escribir "Ingrese la cantidad";
							Leer cantidadBilleteDiez;
							//Dependiendo de la cantidad se van sumando para luego multiplicarlo
							contadorBilleteDiez <- contadorBilleteDiez + cantidadBilleteDiez;
							Escribir "Cantidad añadida al monedero";
						SiNo
							si denominacionBillete=20 Entonces
								Escribir "Ingrese la cantidad";
								Leer cantidadBilleteVeinte;
								//Dependiendo de la cantidad se van sumando para luego multiplicarlo
								contadorBilleteVeinte<- contadorBilleteVeinte+cantidadBilleteVeinte;
								Escribir "Cantidad añadida al monedero";
							SiNo
								Si denominacionBillete=50 Entonces
									Escribir "Ingrese la cantidad";
									Leer cantidadBilleteCincuenta;
									//Dependiendo de la cantidad se van sumando para luego multiplicarlo
									contadorBilleteCincuenta <- contadorBilleteCincuenta+cantidadBilleteCincuenta;
									Escribir "Cantidad añadida al monedero";
								SiNo
									Escribir "Debe ingresar 10,20 o 30";
									contadorMonedero <- contadorMonedero + 1;
									
								FinSi
							FinSi
						FinSi
						
					FinSi
				FinSi
				
				
				
			SiNo
				//Si ingresa 0 el contador se vuelve 1 para terminar el ciclo
				contadorMonedero<-1;
			FinSi
			
		FinMientras
		
		
		
		
		Escribir "Hay ", contadorMonedaUno, " monedas de uno "; 
		Escribir "Hay ", contadorMonedaCinco, " monedas de cinco ";
		Escribir "Hay ", contadorMonedaDiez, " monedas de a diez ";
		
		
		Escribir "Hay ", contadorBilleteDiez, " billetes de a diez";
		Escribir "Hay ", contadorBilleteVeinte, " billetes de a veinte";
		Escribir "Hay ", contadorBilleteCincuenta, " billetes de a cincuenta";
		
		//Se realiza la siguiente operacion para calcular la cantidad de dinero que existe en el monedero
		total <- (contadorMonedaUno*1) + (contadorMonedaCinco*5) + (contadorMonedaDiez*10) + (contadorBilleteDiez*10) + (contadorBilleteVeinte*20) + (contadorBilleteCincuenta*50);
		Escribir " El total de dinero en el monedero es de ", total;
	
	
	
	
	
	
	
FinAlgoritmo
	