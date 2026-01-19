#Cargando librerías y la base de datos
library(rio)
library(tidyverse)
library(dplyr) #Seleccionar las variables
cancer <- import("cancer_prediction.csv", encoding = "Latin-1")
View(cancer)
names(cancer)

#Seleccionamos 5 variables numéricas:
cancer <- cancer |>
  select(
    `concave points_worst`, 
    perimeter_worst, 
    texture_worst, 
    concavity_worst, 
    symmetry_worst) #Antes estaba area_se, pero da valores muy extremos en el método divisivo.

#Guardamos la nueva base cancer
write_csv(cancer, "cancer.csv")