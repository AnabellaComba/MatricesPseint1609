Algoritmo multipliMATRICES
	Definir MatrizA, MatrizB, MatrizC Como Real
	DEfinir i, j como entero
	Dimension MatrizA(3,3), MatrizB(3,3), MatrizC(3,3)
	
	Para i=0 hasta 2 hacer
		Para j=0 hasta 2 Hacer
			MatrizA(i,j)=azar(10)
			MatrizB(i,j)= azar(10)
		FinPara
	FinPara
	
	Para i=0 hasta 2 hacer
		Para j=0 hasta 2 Hacer
			MatrizC(i,j)=MatrizA(i,j)*MatrizB(i,j)
		FinPara
	FinPara
	// se hace bucle de manera de repetición
	Escribir "La primer matriz es"
	Para i=0 hasta 2 hacer
		Para j=0 hasta 2 Hacer
			Escribir MatrizA(i,j), sin saltar " "
		FINPara
		Escribir " "
	FinPara
	
	Escribir "La segunda matriz es"
	Para i=0 hasta 2 hacer
		Para j=0 hasta 2 Hacer
			Escribir MatrizB(i,j), sin saltar " "
		FINPara
		Escribir " "
	FinPara
	
	Escribir "La tercer matriz es"
	Para i=0 hasta 2 hacer
		Para j=0 hasta 2 Hacer
			Escribir MatrizC(i,j), sin saltar " "
		FINPara
		Escribir " "
	FinPara
FinAlgoritmo