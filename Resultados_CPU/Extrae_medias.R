setwd("D:/GIT/TFG-Resultados/Resultados_CPU")

# Primero abrimos un archivo de energía
energia0 <- read.table("energia.dat", header=TRUE)

#ENERGIA0
# Calculamos las medias de cada columna
core0 <- sum(energia0[1:nrow(energia0),1]) * 0.5
ram0 <- sum(energia0[1:nrow(energia0), 2]) * 0.5
core6 <- sum(energia0[1:nrow(energia0), 3]) * 0.5
ram6 <- sum(energia0[1:nrow(energia0), 4]) * 0.5
nvd0 <- sum(energia0[1:nrow(energia0), 5]) * 0.5
nvd1 <- sum(energia0[1:nrow(energia0), 6]) * 0.5
tiempo <- nrow(energia0) * 0.5

# Guardamos los resultados
resultados <- list("CPU0" = core0, "RAM0" = ram0, "CPU1" = core6, "RAM1" = ram6, "GPU0" = nvd0, "GPU1" = nvd1, "TIEMPO" = tiempo)
write.table(resultados, file="consumos.dat", sep = ",", row.names=FALSE)
