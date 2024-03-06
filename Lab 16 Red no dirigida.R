# laboratorio -Análisis de redes en R. Indicadores básicos globales
library (EconGeo)

#cargar data

EL = read.csv("https://raw.githubusercontent.com/PABalland/ON/master/lesmis-el.csv")

#ver encabezado
head (EL)

#transformar a matriz
MM <- get_matrix(EL)

library (igraph)
g <- graph_from_data_frame(d=EL, directed= FALSE)

g

plot (g)

EL$weight = NULL
head(EL)
library(networkD3)
simpleNetwork(EL)


#Ver matriz simétrica (red no dirigida-red bidereccional)