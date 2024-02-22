####################
#                  #
# Copiar todo esto #
#                  #
####################
# Hecho con gusto por _______________________________________
# Código modificado el día viernes
# Laboratorio - An?lisis de redes en R - Algebra matricial

# Objetivo: Explorar las funciones de algebra lineal con un caso hipot?tico
# ------------------------------------------------------------------------------------------------------
# En este ejercicio vamos a:
# 1. Cargar nuestra matriz hipot?tica de datos
# 2. Hacer diversas operaciones matriciales
# 3. Comprender el algoritmo base de las recomendaciones de AMAZON


#######################################
# LABORATORIO: Algebra matricial      #
#######################################


M = as.matrix(
  read.csv("https://raw.githubusercontent.com/PABalland/ON/master/amz.csv" , 
           sep = ",", 
           header = T, 
           row.names = 1))

M

dim (M)
# Es la estructura de red que AMAZON ocupa para hacer recomendaciones en base a tus compras actuales

M [1:6,1]
# Ver s?lo el vector de clientes que compran el producto "corbata" (producto de la columna 1)
M[1:6,1:2]

#Ver s?lo un fragmento de la base original, en relaci?n a los dos productos que me interesan
#Puede ser ?til para explorar clientes y productos
rowSums(M)

# Computar grado de centralidad
t(M)

M+M

X = M+M

M^2

M * M

M %*% t(M)

t(M) %*% M

P = t (M) %*% M

diag (P) = 0

C= M %*% t(M)

diag (C)=0
