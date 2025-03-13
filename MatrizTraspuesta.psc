Proceso MatrizTraspuesta
    // Definir variables
    Definir n, m Como Entero
    Definir matriz Como Entero // Asegúrate de ajustar el tamaño si es necesario
	Dimension matriz[100,100]
    Definir traspuesta Como Entero
	Dimension traspuesta[100,100]
    Definir i, j Como Entero
	
    // Ingreso de dimensiones de la matriz
    Escribir "Ingrese el número de filas (n):"
    Leer n
    Escribir "Ingrese el número de columnas (m):"
    Leer m
	
    // Verificar que el tamaño no exceda el máximo permitido
    Si n > 100 O m > 100 Entonces
        Escribir "Error: Las dimensiones exceden el tamaño máximo permitido de 100x100."
	FinSi



// Llenar la matriz con números aleatorios entre 1 y 100
Para i = 1 Hasta n Hacer
	Para j <- 1 Hasta m Hacer
		
		matriz[i,j] <- Aleatorio(1, 100)
	FinPara
FinPara

// Mostrar la matriz original
Escribir "Matriz Original:"
Para i <- 1 Hasta n
	Para j <- 1 Hasta m
		Escribir Sin Saltar matriz[i,j], " "
	FinPara
	Escribir ""
FinPara

// Calcular la matriz traspuesta
Para i <- 1 Hasta n
	Para j <- 1 Hasta m
		traspuesta[j,i] <- matriz[i,j]
	FinPara
FinPara

// Mostrar la matriz traspuesta
Escribir "Matriz Traspuesta:"
Para i <- 1 Hasta m
	Para j <- 1 Hasta n
		Escribir Sin Saltar traspuesta[i,j], " "
	FinPara
	Escribir ""
FinPara
FinProceso
