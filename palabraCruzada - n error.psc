Algoritmo palabraCruzada
	
	Definir n, m, k Como Entero
	Definir matriz, palabra Como Caracter
	
	Escribir "Ingrese la cantidad de filas y columnas que desee"
	Leer n
	Leer m
	
	Dimension matriz[n,m]
	
	inicializarMatriz(n, m, matriz)
	imprimirMatriz(n, m, matriz)
	Escribir "--------------------------------"
	
	fila = 0
	
	Repetir
		
		agregarPalabra(fila, matriz, palabra)
		
		fila = fila + 1
		
	Mientras Que fila = n
	
FinAlgoritmo

SubProceso inicializarMatriz(n, m, matriz)
	
	Definir i, j Como Entero
	
	Para i = 0 Hasta n-1 Hacer
		
		Para j = 0 Hasta m-1 Hacer
			
			matriz[i,j] = "*"
			
		FinPara
		
	FinPara
	
FinSubProceso

SubProceso imprimirMatriz(n, m, matriz)
	
	Definir i, j Como Entero
	
	Para i = 0 Hasta n-1 Hacer
		
		Para j = 0 Hasta m-1 Hacer
			
			Escribir matriz[i,j], " " Sin Saltar
			
		FinPara
		
		Escribir ""
		
	FinPara
	
FinSubProceso

Subproceso agregarPalabra(fila, matriz, palabra)
	
	Definir j Como Entero
	
	Para j = 0 Hasta Longitud(palabra) - 1 Hacer
		
		matriz[fila,j] = Subcadena(palabra, j,j)
		
	FinPara
	
FinSubProceso

Funcion palabra = validarPalabra(m)
	
	Definir aux Como Caracter
	Definir check, check1 Como Logico
	
	check = Falso
	check1 = Falso
	
	Repetir
		
		Escribir "Ingrese una palabra de hasta " m " caracteres, que contenga al menos una R"
		Leer palabra
		
		palabra = Mayusculas(palabra)
		
		k = 0
		
		Mientras check1 <> Verdadero Y Longitud(palabra) <> k Hacer
			
			aux = Subcadena(palabra, k, k)
			
			Escribir aux
			
			Si aux == "R" Entonces
				
				check1 = Verdadero
				
			SiNo
				
				check1 = Falso
				
			FinSi
			
			k = k + 1
			
		FinMientras
		
		Si Longitud(palabra) > m o aux <> "R" Entonces
			
			Escribir "Longitud de palabra mayor al numero de columnas y contener la letra R, por favor ingrese una palabra de con " m " caracteres"
			check = Falso
			
			
		SiNo
			
			check = Verdadero
			
		FinSi
		
	Mientras Que check = Falso
	
FinFuncion

Funcion posR = buscarR(palabra)
	
	Definir j, posR Como Entero
	Definir primeraCoincidenciaEncontrada Como Logico
	
	posR = -1
	primeraCoincidenciaEncontrada = Falso
	
	Para j = 0 Hasta Longitud(palabra) - 1 Hacer
		
		Si Subcadena(palabra, j, j) == "R" Y primeraCoincidenciaEncontrada == Falso Entonces
			
			posR = j
			primeraCoincidenciaEncontrada = Verdadero
			
		FinSi
		
	FinPara
	
FinFuncion