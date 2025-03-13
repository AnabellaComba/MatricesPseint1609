Proceso MultiplicacionMatrices
    // Definir las matrices
    Definir A[3,3] Como Entero
    Definir B[3,3] Como Entero
    Definir C[3,3] Como Entero
    Definir i, j, k Como Entero
	
    // Inicializar las matrices A y B con valores enteros
    A[1,1] <- 1
    A[1,2] <- 2
    A[1,3] <- 3
    A[2,1] <- 4
    A[2,2] <- 5
    A[2,3] <- 6
    A[3,1] <- 7
    A[3,2] <- 8
    A[3,3] <- 9
	
    B[1,1] <- 9
    B[1,2] <- 8
    B[1,3] <- 7
    B[2,1] <- 6
    B[2,2] <- 5
    B[2,3] <- 4
    B[3,1] <- 3
    B[3][2] <- 2
    B[3,3] <- 1
	
    // Inicializar la matriz C con ceros
    Para i <- 1 Hasta 3
        Para j <- 1 Hasta 3
			
            C[i,j] <- 0
        FinPara
    FinPara
	
    // Multiplicación de matrices
    Para i <- 1 Hasta 3
        Para j <- 1 Hasta 3
            Para k <- 1 Hasta 3
                C[i,j] <- C[i,j] + (A[i][k] * B[k][j])
            FinPara
        FinPara
    FinPara
	
    // Mostrar las matrices
    Escribir "Matriz A:"
    Para i <- 1 Hasta 3
        Para j <- 1 Hasta 3
            Escribir Sin Saltar A[i][j], " "
        FinPara
        Escribir
    FinPara
	
    Escribir "Matriz B:"
    Para i <- 1 Hasta 3
        Para j <- 1 Hasta 3
            Escribir Sin Saltar B[i][j], " "
        FinPara
        Escribir
    FinPara
	
    Escribir "Matriz C (resultado de la multiplicación):"
    Para i <- 1 Hasta 3
        Para j <- 1 Hasta 3
            Escribir Sin Saltar C[i][j], " "
        FinPara
        Escribir
    FinPara
FinProceso
