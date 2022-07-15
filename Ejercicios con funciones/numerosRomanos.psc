Funcion convertir <- convertirANumeroRomano(numeroIngresado Por Valor)
	

	Definir convertir, numeroRomano Como Caracter;
	numeroRomano<-"";
	Repetir
		
		
		si 3000<=numeroIngresado  Entonces
			numeroRomano<- Concatenar(numeroRomano," MMM ");
			numeroIngresado<-numeroIngresado-3000;
			
		SiNo
			si 2000<=numeroIngresado Entonces
				numeroRomano<- Concatenar(numeroRomano,"MM");
				numeroIngresado<-numeroIngresado-2000;
			SiNo
				si 1000<=numeroIngresado Entonces
					numeroRomano<- Concatenar(numeroRomano,"M");
					numeroIngresado<-numeroIngresado-1000;
				SiNo
					si 900<=numeroIngresado Entonces
						numeroRomano<- Concatenar(numeroRomano,"CM");
						numeroIngresado<-numeroIngresado-900;
					SiNo
						si 800<=numeroIngresado Entonces
							numeroRomano<- Concatenar(numeroRomano,"DCCC");
							numeroIngresado<-numeroIngresado-800;
						SiNo
							si 700<=numeroIngresado Entonces
								numeroRomano<- Concatenar(numeroRomano,"DCC");
								numeroIngresado<-numeroIngresado-700;
							SiNo
								si 600<=numeroIngresado Entonces
									numeroRomano<- Concatenar(numeroRomano,"DC");
									numeroIngresado<-numeroIngresado-600;
								SiNo
									si 500<=numeroIngresado Entonces
										numeroRomano<- Concatenar(numeroRomano,"D");
										numeroIngresado<-numeroIngresado-500;
									SiNo
										si 400<=numeroIngresado Entonces
											numeroRomano<- Concatenar(numeroRomano,"CD");
											numeroIngresado<-numeroIngresado-400;
										SiNo
											si 300<=numeroIngresado Entonces
												numeroRomano<- Concatenar(numeroRomano,"CCC");
												numeroIngresado<-numeroIngresado-300;
											SiNo
												si 200<=numeroIngresado Entonces
													numeroRomano<- Concatenar(numeroRomano,"CC");
													numeroIngresado<-numeroIngresado-200;
												SiNo
													si 100<=numeroIngresado Entonces
														numeroRomano<- Concatenar(numeroRomano,"C");
														numeroIngresado<-numeroIngresado-100;
													SiNo
														si 90<=numeroIngresado Entonces
															numeroRomano<- Concatenar(numeroRomano,"XC");
															numeroIngresado<-numeroIngresado-90;
														SiNo
															si 80<=numeroIngresado Entonces
																numeroRomano<- Concatenar(numeroRomano,"LXXX");
																numeroIngresado<-numeroIngresado-80;
															SiNo
																si 70<=numeroIngresado Entonces
																	numeroRomano<- Concatenar(numeroRomano,"LXX");
																	numeroIngresado<-numeroIngresado-70;
																SiNo
																	si 60<=numeroIngresado Entonces
																		numeroRomano<- Concatenar(numeroRomano,"LX");
																		numeroIngresado<-numeroIngresado-60;
																	SiNo
																		si 50<=numeroIngresado Entonces
																			numeroRomano<- Concatenar(numeroRomano,"L");
																			numeroIngresado<-numeroIngresado-50;
																		SiNo
																			si 40<=numeroIngresado Entonces
																				numeroRomano<- Concatenar(numeroRomano,"XL");
																				numeroIngresado<-numeroIngresado-40;
																			SiNo
																				si 30<=numeroIngresado Entonces
																					numeroRomano<- Concatenar(numeroRomano,"XXX");
																					numeroIngresado<-numeroIngresado-30;
																				SiNo
																					si 20<=numeroIngresado Entonces
																						numeroRomano<- Concatenar(numeroRomano,"XX");
																						numeroIngresado<-numeroIngresado-20;
																					SiNo
																						si 10<=numeroIngresado Entonces
																							numeroRomano<- Concatenar(numeroRomano,"X");
																							numeroIngresado<-numeroIngresado-10;
																						SiNo
																							si 9<=numeroIngresado Entonces
																								numeroRomano<- Concatenar(numeroRomano,"IX");
																								numeroIngresado<-numeroIngresado-9;
																							SiNo
																								si 8<=numeroIngresado Entonces
																									numeroRomano<- Concatenar(numeroRomano,"VIII");
																									numeroIngresado<-numeroIngresado-8;
																								SiNo
																									si 7<=numeroIngresado Entonces
																										numeroRomano<- Concatenar(numeroRomano,"VII");
																										numeroIngresado<-numeroIngresado-7;
																									SiNo
																										si 6<=numeroIngresado Entonces
																											numeroRomano<- Concatenar(numeroRomano,"VI");
																											numeroIngresado<-numeroIngresado-6;
																										SiNo
																											si 5<=numeroIngresado Entonces
																												numeroRomano<- Concatenar(numeroRomano,"V");
																												numeroIngresado<-numeroIngresado-5;
																											SiNo
																												si 4<=numeroIngresado Entonces
																													numeroRomano<- Concatenar(numeroRomano,"IV");
																													numeroIngresado<-numeroIngresado-4;
																												SiNo
																													si 3<=numeroIngresado Entonces
																														numeroRomano<- Concatenar(numeroRomano,"III");
																														numeroIngresado<-numeroIngresado-3;
																													SiNo
																														si 2<=numeroIngresado Entonces
																															numeroRomano<- Concatenar(numeroRomano,"II");
																															numeroIngresado<-numeroIngresado-2;
																														SiNo
																															si 1<=numeroIngresado Entonces
																																numeroRomano<- Concatenar(numeroRomano,"I");
																																numeroIngresado<-numeroIngresado-1;
																																
																															FinSi
																														FinSi
																													FinSi
																												FinSi
																											FinSi
																										FinSi
																									FinSi
																								FinSi
																							FinSi
																						FinSi
																					FinSi
																				FinSi
																			FinSi
																		FinSi
																	FinSi
																FinSi
															FinSi
														FinSi
													FinSi
												FinSi
											FinSi
										FinSi
									FinSi
								FinSi
							FinSi
						FinSi
					FinSi
				FinSi
			FinSi
		FinSi
		
		
	Hasta Que numeroIngresado=0
	
	convertir<-numeroRomano;
	
	
FinFuncion


Algoritmo numerosRomanos
	
	Definir numeroIngresado Como Entero;
	
	Repetir
		Escribir "~~~~~~~~~~~~~ Debe ser mayor de 0 y menor de 3000 ~~~~~~~~~~~~";
		Escribir "Ingrese un número";
		Leer numeroIngresado;
	Hasta Que numeroIngresado>0 Y numeroIngresado<=3000
	
	
	Escribir convertirANumeroRomano(numeroIngresado);
	
FinAlgoritmo
	