Proceso EstadisticasVentasRepresentantes
    // Definir constantes
    Definir Zonas Como Entero
    Definir Representantes Como Entero
    Zonas = 6
    Representantes = 4
    
    // Definir variables
    Definir ventas Como Real
	Dimension ventas[Zonas,Representantes] 
    Definir i, j Como Entero
    Definir zonaUsuario, representanteUsuario Como Entero
    Definir totalZona, totalRepresentante, totalVentas Como Real
    
    // Inicializar ventas con datos de ejemplo
    Para i = 0 Hasta Zonas - 1 Hacer
        Para j = 0 Hasta Representantes - 1  Hacer
			
            ventas[i,j] <- Aleatorio(1000, 5000) // Datos de ejemplo, puedes cambiar según sea necesario
        FinPara
    FinPara
	
    // Leer zona especificada por el usuario
    Escribir "Ingrese el número de zona (1: Norte, 2: Sur, 3: Este, 4: Oeste, 5: Centro):"
    Leer zonaUsuario
	
    // Calcular total de ventas en la zona especificada
    totalZona = 0
    Para j = 0 Hasta Representantes - 1 Hacer
        totalZona = totalZona + ventas[zonaUsuario,j]
    FinPara
    Escribir "Total de ventas en la zona ", zonaUsuario, ": ", totalZona
	
    // Leer representante especificado por el usuario
    Escribir "Ingrese el número de representante (1 a 4):"
    Leer representanteUsuario
	
    // Calcular total de ventas del representante en cada zona
    Escribir "Ventas del representante ", representanteUsuario, " en cada zona:"
    Para i = 0 Hasta Zonas - 1 Hacer
		
        totalRepresentante = ventas[i,representanteUsuario]
		
        Escribir "Zona ", i + 1, ": ", totalRepresentante
    FinPara
	
    // Calcular total de ventas de todos los representantes
    totalVentas <- 0
    Para i = 0 Hasta Zonas - 1 Hacer
		
        Para j = 0 Hasta Representantes - 1 Hacer
			
            totalVentas <- totalVentas + ventas[i,j]
        FinPara
    FinPara
    Escribir "Total de ventas de todos los representantes: ", totalVentas
FinProceso
