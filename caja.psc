Algoritmo caja
	Definir n, m, cajita como entero
	Dimension cajita[5,15]
	n = 5
	m = 15
	armarCaja(cajita,n,m)
	
FinAlgoritmo


SubProceso armarCaja(cajita,n,m)
	Para n = 0 Hasta n-1 Hacer
		para m=0 Hasta m-1 Hacer
			si n=0 o n=4 o m=0 o m=14 Entonces
				cajita[n,m]=1
			SiNo
				cajita[n,m]=0
			FinSi
			
		FinPara
	FinPara
	
	Para n=0 Hasta n-1 Hacer
		para m=0 Hasta m-1 Hacer
			Escribir cajita[n,m], Sin Saltar " "
			
		FinPara
		Escribir ""
	FinPara
FinSubProceso