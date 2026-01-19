# Análisis de Cáncer de mama con Clustering (Shiny Dashboard)

El proyecto utiliza el **Breast Cancer Wisconsin (Diagnostic) Data Set**, un conjunto de datos clásico en la literatura de Machine Learning médico.

🔗 **[Ver Dashboard en vivo aquí](https://ulisesrodas.shinyapps.io/cancer_dashboard/)**

## 🎯 Objetivo del proyecto

El objetivo principal fue explorar si es posible distinguir entre tumores benignos y malignos usando las técnicas de clasificación no supervisada jerárquico y divisivo, solo basándonos en 5 variables clave: concave points_worst, perimeter_worst, texture_worst, concavity_worst y symmetry_wors.

## 📊 Sobre los datos

Se utilizó el famoso **Breast Cancer Wisconsin (Diagnostic) Data Set**. Link del proyecto en Kaggle: https://www.kaggle.com/code/vikasukani/breast-cancer-prediction-using-machine-learning/
* **Observaciones:** 569 muestras de biopsias.
* **Variables:** 30 características numéricas calculadas a partir de imágenes digitalizadas (radio, textura, perímetro, área, suavidad, etc.).

### Selección de Variables
Para este análisis, se seleccionaron las 5 variables con mayor poder discriminante según el análisis exploratorio:
* `concave points_worst`
* `perimeter_worst`
* `texture_worst`
* `concavity_worst`
* `symmetry_worst`

## 🛠 Metodología y Análisis

El dashboard guía al usuario a través del flujo completo de un análisis de clustering:

1.  **Preprocesamiento:** Estandarización de datos para manejar diferentes escalas geométricas.
2.  **Determinación de Clústeres (k):** Uso del **Método del Codo** y el algoritmo **NbClust** para identificar el número óptimo de grupos (k=2, validando la dualidad Benigno/Maligno).
3.  **Algoritmos Aplicados:**
    * **Clustering Jerárquico Aglomerativo (Agglomerative):** Enfoque "bottom-up".
    * **Clustering Jerárquico Divisivo (DIANA):** Enfoque "top-down".
4.  **Validación de Resultados:**
    * Visualización mediante **Dendrogramas**.
    * Reducción de dimensionalidad con **PCA (Análisis de Componentes Principales)** para visualizar la separación en 2D.
    * Análisis de **Silueta (Silhouette Plot)** para medir la cohesión de los grupos.

## 🚀 Resultados Clave

* El análisis no supervisado logró separar exitosamente los casos en dos grandes grupos que coinciden significativamente con los diagnósticos clínicos reales.
* El algoritmo **Divisivo** mostró un rendimiento ligeramente superior en la definición de la estructura de los datos para este caso específico.

## 💻 Tecnologías Utilizadas

* **Lenguaje:** R
* **Framework:** Shiny (integrado en Quarto `.qmd`)
* **Librerías Clave:**
    * `tidyverse` (Manipulación de datos)
    * `factoextra` (Visualización de clustering y PCA)
    * `cluster` (Algoritmos de agrupamiento)
    * `dendextend` (Manejo de dendrogramas)

## 📂 Estructura del Repositorio

```text
├── cancer_dashboard.qmd   # Código fuente del dashboard (Quarto)
├── data/                  # Carpeta con el dataset (si aplica)
├── rsconnect/             # Archivos de configuración de despliegue (Ignorado en git)
└── README.md              # Documentación del proyecto
