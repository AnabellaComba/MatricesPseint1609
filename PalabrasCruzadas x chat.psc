Algoritmo PalabrasCruzadas
	
	Definir fila, columna, filaAIngresarPalabra, filaR, posicionR, i, j como entero
	Definir matriz, palabra como caracter
	fila=9
	columna=12
	Dimension matriz[fila, columna]
	
	inicializarMatriz(matriz, fila, columna)
	imprimirMatriz(matriz, fila, columna)
	Escribir ""
	
	Para i = 0 Hasta fila - 1 Hacer
		Escribir "Ingrese una palabra para la fila " i + 1
		Leer palabra
		agregarPalabra(matriz, i, palabra)
	FinPara
	
	imprimirMatriz(matriz, fila, columna)
	Escribir ""
	
	Escribir "Escribir la fila en la que quiere encontrar R"
	Leer filaR
	posicionR = buscarR(matriz, filaR, columna)
	Escribir ""
	Escribir "La R se encuentra en la posición " posicionR " de la fila indicada"
	Escribir ""
	
	posicionR = buscarR(matriz, 0, columna)
	Si posicionR == -1 Entonces
		Escribir "No se encontró R en la primera fila."
	Sino
		Para i = 1 Hasta fila - 1 Hacer
			acomodarPalabra(matriz, i, columna, posicionR)
		FinPara
		Escribir ""
		imprimirMatriz(matriz, fila, columna)
	FinSi
	
	
FinAlgoritmo

SubProceso inicializarMatriz (matriz Por Referencia, fila, columna)
	Definir i, j Como Entero
	Para i<- 0 Hasta fila-1 Hacer
		para j<-0 Hasta columna-1 Hacer
			matriz[i,j]="*"
		FinPara
	FinPara
	
FinSubProceso

SubProceso imprimirMatriz(matriz Por Referencia, fila, columna)
	Definir i, j Como Entero
	Para i<- 0 Hasta fila-1 Hacer
		para j<-0 Hasta columna-1 Hacer
			Escribir matriz[i,j] " " Sin Saltar
		FinPara
		Escribir " "
	FinPara
FinSubProceso

SubProceso agregarPalabra(matriz Por Referencia, fila, palabra)
	Definir i Como Entero
	
	Para i=0 hasta Longitud(palabra) -1 Hacer
		matriz[fila, i] = Subcadena(palabra,i,i)
	FinPara
	
FinSubProceso

Funcion posicion <- buscarR(matriz, fila, columna)
	Definir i, posicion Como Entero
	
	Para i=0 Hasta columna - 1 Hacer
		Si Mayusculas(matriz[fila, i]) == "R" Entonces
			posicion = i
			i = columna
		FinSi
	FinPara
	
FinFuncion

SubProceso acomodarPalabra(matriz Por Referencia, fila, columna, posicionROrigen)
	Definir i, j, desplazamiento Como Entero
	desplazamiento = buscarR(matriz, fila, columna) - posicionROrigen
	
	Si desplazamiento > 0 Entonces
		Para j = 0 Hasta columna - desplazamiento - 1 Hacer
			matriz[fila, j] = matriz[fila, j + desplazamiento]
		FinPara
		Para j = columna - desplazamiento Hasta columna - 1 Hacer
			matriz[fila, j] = "*"
		FinPara
	FinSi
	
	Si desplazamiento < 0 Entonces
		Para j = columna - 1 Hasta -desplazamiento Con Paso -1 Hacer
			matriz[fila, j] = matriz[fila, j + desplazamiento]
		FinPara
		Para j = 0 Hasta -desplazamiento - 1 Hacer
			matriz[fila, j] = "*"
		FinPara
	FinSi
FinSubProceso
