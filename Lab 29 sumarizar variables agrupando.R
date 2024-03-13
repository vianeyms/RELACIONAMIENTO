
library(data.table)
library(dplyr)
#elegir archivo
choose.files()

#leer datos
data2013 <- read.csv("C:\\Users\\Vianey\\Downloads\\greenR_2013.csv")
# tipo de archivo
data2013 <- as.data.table(data2013)
class(data2013)

#sumarizar datos

resultados2013 <- data2013 %>% 
  group_by(location_name) %>% 
  summarise(suma_GCI_2013= sum(GCI_2013, na.rm = T),
           suma_GP_SINVCR = sum(GP_SINVCR,na.rm = T),
           SUMA_GCP_2013 =sum(GCP_2013,na.rm = T),
           count = n())

