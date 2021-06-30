setwd("D:/GIT/TFG-Resultados/Resultados_1GPU")
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
core0[1] <- sum(energia0[94:nrow(energia0),1]) * 0.5
ram0[1] <- sum(energia0[94:nrow(energia0),2]) * 0.5
core6[1] <- sum(energia0[94:nrow(energia0),3]) * 0.5
ram6[1] <- sum(energia0[94:nrow(energia0),4]) * 0.5
nvd0[1] <- sum(energia0[94:nrow(energia0),5]) * 0.5
nvd1[1] <- sum(energia0[94:nrow(energia0),6]) * 0.5
tiempo[1] <- (nrow(energia0) - 94) * 0.5

#ENERGIA1
core0[2] <- sum(energia1[107:nrow(energia1),1])  * 0.5
ram0[2] <- sum(energia1[107:nrow(energia1),2]) * 0.5
core6[2] <- sum(energia1[107:nrow(energia1),3]) * 0.5
ram6[2] <- sum(energia1[107:nrow(energia1),4]) * 0.5
nvd0[2] <- sum(energia1[107:nrow(energia1),5]) * 0.5
nvd1[2] <- sum(energia1[107:nrow(energia1),6]) * 0.5
tiempo[2] <- (nrow(energia0) - 107) * 0.5

#ENERGIA2
core0[3] <- sum(energia2[101:nrow(energia2),1]) * 0.5
ram0[3] <- sum(energia2[101:nrow(energia2),2]) * 0.5
core6[3] <- sum(energia2[101:nrow(energia2),3]) * 0.5
ram6[3] <- sum(energia2[101:nrow(energia2),4]) * 0.5
nvd0[3] <- sum(energia2[101:nrow(energia2),5]) * 0.5
nvd1[3] <- sum(energia2[101:nrow(energia2),6]) * 0.5
tiempo[1] <- (nrow(energia0) - 101) * 0.5

m_core0 = mean(core0)
m_ram0 = mean(ram0)
m_core1 = mean(core6)
m_ram1 = mean(ram6)
m_nvd0 = mean(nvd0)
m_nvd1 = mean(nvd1)
m_tiempo = mean(tiempo)

# Guardamos los resultados
resultados <- list("CPU0" = m_core0, "RAM0" = m_ram0, "CPU1" = m_core1, "RAM1" = m_ram1, "GPU0" = m_nvd0, "GPU1" = m_nvd1, "TIEMPO" = m_tiempo)
write.table(resultados, file="consumos_medios.dat", sep = ",", row.names = FALSE)
