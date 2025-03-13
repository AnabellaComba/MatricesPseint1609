Proceso MatrizColumnas

    Definir i, n Como Entero
    Definir matriz Como Entero 
	
  
    Escribir "Ingrese la cantidad de filas para la matriz:"
    Leer n
	
	Dimension matriz[n,3] 
	
   
    Si n > 100 Entonces
        Escribir "Error: El número de filas excede el tamaño máximo permitido de 100."
	FinSi	

	Para i = 0 Hasta n -1 Hacer

	Escribir "Ingrese el valor para la primera columna, fila ", i, ":"
	Leer matriz[i,0]
	Escribir "Ingrese el valor para la segunda columna, fila ", i, ":"
	Leer matriz[i,1]
	matriz[i,2] = matriz[i,0] + matriz[i,1]
	
FinPara


Escribir "Matriz Generada:"
Para i = 0 Hasta n -1 Hacer
	
	Escribir matriz[i,0], " | ", matriz[i,1], " | ", matriz[i,2], " °.° ", matriz[i,2], " se obtuvo de sumar ", matriz[i,0], " + ", matriz[i,1]
FinPara
FinProceso
