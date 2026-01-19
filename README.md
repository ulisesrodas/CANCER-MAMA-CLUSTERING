# Análisis de cáncer de mama con Clustering (Shiny dashboard)

El proyecto utiliza el **Breast Cancer Wisconsin (Diagnostic) Data Set**, un conjunto de datos clásico en la literatura de Machine Learning médico perteneciente a la Universidad de California en Irvine.

🔗 **[Ver Dashboard](https://ulisesrodas.shinyapps.io/cancer_dashboard/)**

## 🎯 Objetivo del proyecto

El objetivo principal fue explorar si es posible distinguir entre tumores benignos y malignos usando las técnicas de clasificación no supervisada jerárquico y divisivo, solo basándonos en 5 variables clave: concave points_worst, perimeter_worst, texture_worst, concavity_worst y symmetry_wors.

## 📊 Sobre los datos

Se utilizó el famoso **Breast Cancer Wisconsin (Diagnostic) Data Set**. La base de datos puede verse [aquí](https://archive.ics.uci.edu/dataset/17/breast+cancer+wisconsin+diagnostic)
* **Observaciones:** 569 muestras de biopsias.
* **Variables:** 30 características numéricas calculadas a partir de imágenes digitalizadas (radio, textura, perímetro, área, suavidad, etc.).

### Selección de Variables
Para este análisis, se seleccionaron las 5 variables con mayor poder discriminante según el análisis exploratorio:
* `concave points_worst`: Mide la irregularidad de la forma del tumor. Valores altos sugieren una forma menos suave.
* `perimeter_worst`: Representa el tamaño general del tumor.
* `texture_worst`: Indica la variación en la escala de grises de los núcleos celulares (una medida de la heterogeneidad de la textura).
* `concavity_worst`: Mide la severidad de las hendiduras en el contorno del tumor.
* `symmetry_worst`: Nos dice qué tan irregular y asimétrica es la forma de los núcleos celulares más anormales encontrados en la muestra.

## 🛠 Metodología y Análisis

El dashboard guía al usuario a través del flujo completo de un análisis de clustering:

1.  **Preprocesamiento:** Estandarización de datos para manejar diferentes escalas geométricas.
2.  **Determinación de Clústeres (k):** Uso del **Método del Codo** y el algoritmo **NbClust** para identificar el número óptimo de grupos (k=2, validando la dualidad Benigno/Maligno).
3.  **Algoritmos Aplicados:**
    * **Clustering Jerárquico aglomerativo (agglomerative):** Enfoque "bottom-up".
    * **Clustering Jerárquico divisivo (DIANA):** Enfoque "top-down".
4.  **Validación de Resultados:**
    * Visualización mediante **Dendrogramas**.
    * Reducción de dimensionalidad con **PCA (Análisis de Componentes Principales)** para visualizar la separación en 2D.
    * Análisis de **Silueta (Silhouette Plot)** para medir la cohesión de los grupos.

## 🚀 Resultados Clave

* Ambas técnicas de análisis no supervisado logró separar exitosamente los casos en dos grandes grupos que coinciden significativamente con los diagnósticos clínicos reales.
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
├── cancer.csv             # Archivo filtrado con las 5 variables a predecir. Ese se usará en el dashboard 
├── cancer_dashboard.qmd   # Código fuente del dashboard (Quarto)
├── cancer_preparacion.R   # Script de R con la preparación de los datos  
└── README.md              # Documentación del proyecto
```

## 👨‍💻 Autor
**Ulises Rodas**
* Sociólogo (UNMSM) & estudiante de Ciencia de datos.
