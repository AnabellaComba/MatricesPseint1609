Proceso MatrizBorde
    // Definir variables
    Definir i, j Como Entero
    Definir matriz Como Entero
	Dimension matriz[5,15]
	
    // Llenar la matriz con unos y ceros
    Para i <- 1 Hasta 5
        Para j <- 1 Hasta 15
            // Verificar si estamos en el borde
            Si i = 1 O i = 5 O j = 1 O j = 15 Entonces
                matriz[i,j] = 1
				
            Sino
                matriz[i,j] = 0
            FinSi
        FinPara
    FinPara
	
    // Mostrar la matriz
    Escribir "Matriz Generada:"
    Para i <- 1 Hasta 5 Hacer
		
        Para j <- 1 Hasta 15 Hacer
			
            Escribir Sin Saltar matriz[i,j], " "
        FinPara
        Escribir ""
    FinPara
FinProceso
//Comentario sobre ejercicio realizado
