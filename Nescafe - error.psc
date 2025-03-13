Algoritmo Nescafe
	
	Definir n, m, tabla Como Entero
	Dimension tabla[5,6]
	n=0
	m=0
	Para n=0 Hasta n-2 Hacer
		para m=0 Hasta m-2 Hacer
			tabla(n,m)= Aleatorio(1,50)
			Escribir tabla(n,m),Sin Saltar " "
			
		FinPara
		Escribir ""
	FinPara
	
FinAlgoritmo

SubProceso sumaZona (tabla,n,m)
	Definir suma Como Entero
	para n=0 Hasta n-2 Hacer
		para m=0 Hasta m
			
		FinPara
	fin para
		
FinSubProceso


SubProceso ventaZona (tabla,n,m)
	definir entrada Como Entero
	Escribir "Elija la zona de la que desea ver las ventas totales siendo Norte=1, Sur=2, Este=3, Oeste=4, Centro=5"
	leer entrada
	Segun entrada Hacer
		1:
			para n=0 hasta n-2
				
			FinPara
			
			
	FinSegun
	
	
FinSubProceso