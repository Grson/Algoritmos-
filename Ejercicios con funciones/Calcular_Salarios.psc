Funcion totalAPagar <- salario(horasTrabajadas, salarioHora)
	
	Definir totalAPagar,ExtraOrdinario, Ordinario Como Real;
	Definir horasExtras Como Entero;
	
	Si horasTrabajadas>40 Entonces
		
		horasExtras<-horasTrabajadas-40;
		
		ExtraOrdinario<-(1.5*salarioHora)*horasExtras;
		Ordinario<-40*salarioHora;
		totalAPagar<-ExtraOrdinario+Ordinario;
		
	SiNo
		totalAPagar<-(salarioHora*horasTrabajadas);
	FinSi
	
FinFuncion

Algoritmo Calcular_Salarios
	
	Definir horasTrabajadas, salarioHora Como Real;
	
	Repetir
		Escribir "Ingrese las horas trabajadas";
		Leer horasTrabajadas;
	Hasta Que horasTrabajadas>0
	
	Repetir
		Escribir "Ingrese el salario hora";
		Leer salarioHora;
	Hasta Que salarioHora>0
	
	
	Escribir "El total a pagar es de ", salario(horasTrabajadas, salarioHora);
	
FinAlgoritmo