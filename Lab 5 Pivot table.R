####################
#                  #
# Copiar todo esto #
#                  #
####################
# Hecho con gusto por Carla Carolina Pérez Hernández (UAEH)

# Laboratorio - PIVOTAR A LO LARGO


#############################################
#LABORATORIO: Tidy data (datos ordenados) 1 #
#############################################
#Prerrequisitos

#instalar paquete tidyverse  y readr
install.packages("tidyverse")
install.packages("readr")


#Cargar paquete tidyverse y readr
library(tidyverse)
library(readr)

#CARGAR DATOS
library(readr)
tabla1 <- read_csv("DOctorado/Tercer semestre/Dra. Carla temas selectos/laboratorios/ICE 2014.csv")
View(ICE_2014)

library(readr)
tabla1 <- read_csv("ice 2014.csv")



names(tabla1)

# 1. Pivotar tabla  "A LO LARGO"
t1_PIVOTANTE = tabla1 %>%
  pivot_longer(cols = c("KM0"   ,   "KM2"   ,   "KM4"   ,   "KM6"   ,   "KM8"    ,  "KM10"  ,   "KM12"  ,   "KM14"  ,   "KM16"  ,   "KM18"   ,  "KM20"  ,   "KM22" , "KM24"  ,   "KM26" ), names_to = "iteracion", values_to = "ranking")

# Exportar resultado: tabla ordenada
write.csv(t1_PIVOTANTE, file = "ice_CHARTICULATOR.csv")


getwd()
setwd("C:/Users/karit/Desktop")
