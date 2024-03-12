####################
#                  #
# Copiar todo esto #
#                  #
####################
# Hecho con gusto por Carla Carolina Pérez Hernández (UAEH)

# LABORATORIO - Tidy data -datos ordenados- PARTE 1,2 y 3.

# Objetivo: Introducción práctica a los datos ordenados (o tidy data) y a las herramientas que provee el paquete tidyr.
# --------------------------------------------------------------------------------------------------------------------
# En este ejercicio vamos a:
# 1. Cargar datos (tibbles)
# 2. Converir nuestros tiblles en dataframes (para su exportación)
# 3. Exportar dataframes originales
# 4. Pivotar tabla 4a
# 5. Exportar resutltado (TABLA PIVOTANTE)
# 6. Separar y unir tablas



#############################################
#LABORATORIO: Tidy data (datos ordenados) 1 #
#############################################
#Prerrequisitos
#instalar paquete tidyverse
#install.packages("tidyverse")


#instalar paquete de datos

install.packages("remotes")
remotes::install_github("cienciadedatos/datos")
install.packages("datos")

#Cargar paquete tidyverse
library(tidyverse)

#Cargar paquete de datos
library(datos)


#tabla 1 hasta tabla 4b
datos:: tabla1

#ver datos como tibble 
datos:: tabla1
datos:: tabla2
datos:: tabla3
datos:: tabla4a
datos:: tabla4b





#ver datos como dataframe 

df1 <- data.frame(tabla1)
df2 <- data.frame(tabla2)
df3 <- data.frame(tabla3)
df4a <- data.frame(tabla4a)
df4b <- data.frame(tabla4b)

#exportar los dataframes originales
write.csv(df1,file ="df1.csv")




vignette("tibble")
#explicación de tibble




# Ordenar datos con la tabla4a (PIVOTAR)
t4a_PIVOTANTE = tabla4a %>%
  pivot_longer(cols= c(`1999`, `2000`), names_to = "anio", values_to = "casos")



# Exportar resultado: tabla ordenada

write.csv(t4a_PIVOTANTE,file ="t4a_PIVOTANTE.csv")

# Ordenar datos con la tabla4b (PIVOTAR)
t4b_PIVOTANTE = tabla4b %>%
  pivot_longer(cols= c(`1999`, `2000`), names_to = "anio", values_to = "poblacion")

#unir tablas

union_t4 = left_join(t4a_PIVOTANTE, t4b_PIVOTANTE)

#Exportar resultado: tabla ordenada

write.csv(union_t4,file ="union_t4.csv")

#EJERCICIO 3: DATOS ANCHOS CON TABLA 2
# 1. Pivotar tabla 2 "A LO ANCHO"




#VER TABLA 2

# Ordenar datos con la tabla 2 (PIVOTAR a lo ANCHO)

t2_ancha =tabla2 %>% 
  pivot_wider(names_from = tipo, values_from = cuenta)


# Exportar resultado: tabla ordenada

write.csv(t2_ancha,file ="t2_ancha.csv")
