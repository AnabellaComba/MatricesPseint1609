Algoritmo matrizTrasversa
	Definir n, m Como Entero
	Definir original, tras Como Real
	Escribir "Ingrese la dimensión de las filas de la matriz original"
	leer n
	Escribir "Ingrese la dimensión de las columnas de la matriz original"
	leer m
	Dimension original[n,m]
	Dimension tras(m,n)
	MatrizAZAR(original, n, m, tras)
	
FinAlgoritmo

SubProceso MatrizAZAR(original, n, m, tras)
	para n=0 hasta n-1 Hacer
		Para m=0 hasta m-1 Hacer
			original(n,m)= 1+ azar(100)
			tras(m,n)= original(n,m)
		FinPara
	FinPara
	Escribir "La original es "
	para n=0 hasta n-1 Hacer
		Para m=0 hasta m-1 Hacer
			Escribir original(n,m), Sin Saltar " "
			
		FinPara
		Escribir " "
	FinPara
	Escribir "Y las traspuesta es "
	para m=0 hasta m-1 Hacer
		Para n=0 hasta n-1 Hacer
			Escribir tras(m,n), Sin Saltar " "
			
		FinPara
		Escribir " "
	FinPara
FinSubProceso