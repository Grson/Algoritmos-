//Gersón Samuel Alvarado de León
//1/7/22
// Realizado en Pseint
// Evaluacion con condicionales y ciclos

// *************	Usando ciclo Para	***********

//Calendario del año 2021 y 2022


Algoritmo Problema_4
	
	Definir contadorNombreDelDia, numeroNombreDia, totalDiasMes, contadorNumeroMes, contadorNumeroDia, contadorAnio, contadorMes, contadorDia, contadorNombreDia Como Entero
	Definir  nombreMes Como Caracter
	
	numeroNombreDia<-5;
	
	// Contador año, mostrará el año respectivo
	Para contadorAnio<-2021 Hasta 2022 Con Paso 1 Hacer
		Escribir " ******************************* "
		Escribir " El año ", contadorAnio, " no es un año bisiesto"
		Escribir " ******************************* "
		Escribir " ";
		
		//Contador mes, mostrará el mes respectivo
		Para contadorNumeroMes<-1 Hasta 12 Con Paso 1 Hacer
			
			//Asignar los dias del mes
			si contadorNumeroMes=1 o contadorNumeroMes=3 o contadorNumeroMes=5 o contadorNumeroMes=7 o contadorNumeroMes=8 o contadorNumeroMes=10 o contadorNumeroMes=12 Entonces
				totalDiasMes=31
			SiNo
				Si contadorNumeroMes=2 Entonces
					totalDiasMes=28
				SiNo
					totalDiasMes = 30
					
				FinSi
			FinSi
			
			
			
			//Mostrar los dias según el mes
			Para contadorNumeroDia<-1 Hasta totalDiasMes Con Paso 1 Hacer
				
				//Mostrar el nombre del dia de la semana 
				Para contadorNombreDelDia <- numeroNombreDia Hasta numeroNombreDia Con Paso 1 Hacer
					
					
					//Asignar un nombre segun el numero del mes
					si contadorNumeroMes=1 Entonces
						nombreMes = "Enero"
					SiNo
						Si contadorNumeroMes = 2 Entonces
							nombreMes = "Febrero"
						SiNo
							Si contadorNumeroMes = 3 Entonces
								nombreMes = "Marzo"
							SiNo
								Si contadorNumeroMes = 4 Entonces
									nombreMes = "Abril"
								SiNo
									Si contadorNumeroMes = 5 Entonces
										nombreMes = "Mayo"
									SiNo
										Si contadorNumeroMes = 6 Entonces
											nombreMes = "Junio"
										SiNo
											Si contadorNumeroMes = 7 Entonces
												nombreMes = "Julio"
											SiNo
												Si contadorNumeroMes = 8 Entonces
													nombreMes = "Agosto"
												SiNo
													Si contadorNumeroMes = 9 Entonces
														nombreMes = "Septiembre"
													SiNo
														Si contadorNumeroMes = 10 Entonces
															nombreMes = "Octubre"
														SiNo
															Si contadorNumeroMes = 11 Entonces
																nombreMes = "Noviembre"
															SiNo
																Si contadorNumeroMes = 12 Entonces
																	nombreMes = "Diciembre"
																Fin Si
															Fin Si
														Fin Si
													Fin Si
												Fin Si
											Fin Si
										Fin Si
									Fin Si
								Fin Si
							Fin Si
						Fin Si
					FinSi
					
					
					
					
					
					
					
					
					
					si contadorNombreDelDia=1 Entonces
						nombreDia = "Lunes"
					SiNo
						Si contadorNombreDelDia = 2 Entonces
							nombreDia = "Martes"
						SiNo
							Si contadorNombreDelDia = 3 Entonces
								nombreDia = "Miercoles"
							SiNo
								Si contadorNombreDelDia = 4 Entonces
									nombreDia = "Jueves"
								SiNo
									Si contadorNombreDelDia = 5 Entonces
										nombreDia = "Viernes"
									SiNo
										Si contadorNombreDelDia = 6 Entonces
											nombreDia = "Sabado"
										SiNo
											Si contadorNombreDelDia = 7 Entonces
												nombreDia = "Domingo"
											Fin Si
										Fin Si
									Fin Si
								Fin Si
							Fin Si
						Fin Si
					FinSi
					
					
					
					
					// Contador para el dia 
					// numeroNombreDia hasta numeroNombreDia se repetirá una cada vez y cuando tenga el numero 8 se reinicia al numero 1
					numeroNombreDia<- numeroNombreDia+1;
					Si numeroNombreDia=8 Entonces
						numeroNombreDia=1
					FinSi
					
					
					Escribir "El ", contadorNumeroDia, " de ", nombreMes, " de " contadorAnio, " es ", nombreDia;
					
					
					
					
				
					
				FinPara
			FinPara
			
			
			// Contador para el mes 
			// contadorNumeroMes hasta contadorNumeroMes se repetirá cada vez y cuando tenga el numero 13 se reinicia al numero 1
			Si contadorNumeroMes=13 Entonces
				contadorNumeroMes=1
			FinSi
			
		FinPara
	FinPara
	
	
FinAlgoritmo
