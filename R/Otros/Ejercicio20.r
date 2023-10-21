# Cargar la librería necesaria para generar números aleatorios
library(stats)

# Grados de libertad
v1 <- 4
v2 <- 6

# Número de observaciones a simular
n_simulaciones <- 1000

# Simular 1000 observaciones de la distribución F
observaciones_f <- rf(n_simulaciones, v1, v2) # Ahora, 'observaciones_f' contiene 1000 valores simulados de la distribución F(v1=4, v2=6).

# Cargar la librería necesaria para crear el histograma
library(graphics)

# a) Obtener la media de la muestra
media_muestra <- mean(observaciones_f)

# b) Obtener la cuasivarianza de la muestra
cuasivarianza_muestra <- var(observaciones_f)  # Por defecto, var calcula la cuasivarianza

# c) Realizar el histograma de la muestra
hist(observaciones_f, breaks = 30, main = "Histograma de la Muestra", xlab = "Valores", ylab = "Frecuencia", col = "lightblue", border = "black")

# Mostrar la media y la cuasivarianza
cat("Media de la muestra:", media_muestra, "\n")
cat("Cuasivarianza de la muestra:", cuasivarianza_muestra, "\n")
