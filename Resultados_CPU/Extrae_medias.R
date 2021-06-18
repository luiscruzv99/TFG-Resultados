setwd("D:/GIT/TFG-Resultados/Resultados_CPU")

# Primero abrimos un archivo de energía
energia0 <- read.table("energia.dat", header=TRUE)

#ENERGIA0
# Calculamos las medias de cada columna
core0 <- mean(energia0[1:nrow(energia0),1])
ram0 <- mean(energia0[1:nrow(energia0), 2])
core6 <- mean(energia0[1:nrow(energia0), 3])
ram6 <- mean(energia0[1:nrow(energia0), 4])
nvd0 <- mean(energia0[1:nrow(energia0), 5])
nvd1 <- mean(energia0[1:nrow(energia0), 6])
# Calculamos el tiempo pasado
tiempo <- (nrow(energia0)-94)*0.5

# Guardamos los resultados
resultados <- list("CPU 0" = core0, "RAM 0" = ram0, "CPU 1" = core6, "RAM 1" = ram6, "GPU 0" = nvd0, "GPU 1" = nvd1, "Tiempo" = tiempo)
write.table(resultados, file="medias_energia.dat", sep = ",", row.names=FALSE)
