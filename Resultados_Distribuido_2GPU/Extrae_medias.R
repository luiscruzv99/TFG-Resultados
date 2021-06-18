setwd("D:/GIT/TFG-Resultados/Resultados_Distribuido_2GPU")
core0 = vector()
core6 = vector()
ram0 = vector()
ram6 = vector()
nvd0 = vector()
nvd1 = vector()
tiempo = vector()




# Primero abrimos un archivo de energía
energia0 <- read.table("energia0.dat", header=TRUE)
energia1 <- read.table("energia1.dat", header=TRUE)
energia2 <- read.table("energia2.dat", header=TRUE)

#ENERGIA0
# Calculamos las medias de cada columna
core0[1] <- mean(energia0[77:nrow(energia0),1])
ram0[1] <- mean(energia0[77:nrow(energia0),2])
core6[1] <- mean(energia0[77:nrow(energia0),3])
ram6[1] <- mean(energia0[77:nrow(energia0),4])
nvd0[1] <- mean(energia0[77:nrow(energia0),5])
nvd1[1] <- mean(energia0[77:nrow(energia0),6])
# Calculamos el tiempo pasado
tiempo[1] <- (nrow(energia0)-77)*0.5

#ENERGIA1
core0[2] <- mean(energia1[69:nrow(energia1),1])
ram0[2] <- mean(energia1[69:nrow(energia1),2])
core6[2] <- mean(energia1[69:nrow(energia1),3])
ram6[2] <- mean(energia1[69:nrow(energia1),4])
nvd0[2] <- mean(energia1[69:nrow(energia1),5])
nvd1[2] <- mean(energia1[69:nrow(energia1),6])

tiempo[2] <- (nrow(energia1)-69)*0.5

#ENERGIA2
core0[3] <- mean(energia2[72:nrow(energia2),1])
ram0[3] <- mean(energia2[72:nrow(energia2),2])
core6[3] <- mean(energia2[72:nrow(energia2),3])
ram6[3] <- mean(energia2[72:nrow(energia2),4])
nvd0[3] <- mean(energia2[72:nrow(energia2),5])
nvd1[3] <- mean(energia2[72:nrow(energia2),6])

tiempo[3] <- (nrow(energia2)-72)*0.5

# Guardamos los resultados
resultados <- list("CPU 0" = core0, "RAM 0" = ram0, "CPU 1" = core6, "RAM 1" = ram6, "GPU 0" = nvd0, "GPU 1" = nvd1, "Tiempo" = tiempo)
write.table(resultados, file="medias_energia.dat", sep = ",", row.name = FALSE)
