//Gerson Samuel Alvarado de León
//11-07-222
//Evaluacion funciones


//El subproceso devulve un valor hasta que se  obtiene un valor
SubProceso Login(usuario Por Valor, contrasenia Por Valor)
	
	//Inicializar variables
	Definir usuarioIngresado, contraseniaIngresada Como caracter;
	Definir comprobarCredenciales Como Logico;
	Definir intentos Como Entero;
	intentos<-1;
	
	Repetir
	Limpiar Pantalla;
	Escribir "-----------------------------------------";
	Escribir "Intento #", intentos;
	Escribir "-----------------------------------------";
	
	Escribir "Login";
	Escribir "Ingrese su usuario";
	Leer usuarioIngresado;
	Escribir "Ingrese su contraseña";
	Leer contraseniaIngresada;
	
	
		//Si son correctos se accede
		Si usuario=usuarioIngresado y contrasenia=contraseniaIngresada Entonces
			comprobarCredenciales<-Verdadero;
			Escribir comprobarCredenciales;
		SiNo
			
			//Si no son correctos se  suma 1 al intento
			si usuario<>usuarioIngresado y contrasenia<>contraseniaIngresada Entonces
				Escribir "El usuario o contraseña es incorrecta";
				Escribir "Presione una tecla";
				Esperar Tecla;
				intentos<-intentos+1;
			FinSi
		FinSi
		
	Hasta Que intentos=4
	
	//Si falla mas de tres veces se detiene y muestra un mensaje
	si intentos=4 Entonces
		Escribir "El login ha finalizado porque ha superado el limite de intentos";
	FinSi
	
	
	
FinSubProceso

Algoritmo Problema_2
	Definir usuario, contrasenia Como Caracter;
	Escribir "Defina el usuario";
	Leer usuario;
	
	Escribir "Defina la contraseña";
	Leer contrasenia;
	
	Login(usuario, contrasenia);
FinAlgoritmo
	