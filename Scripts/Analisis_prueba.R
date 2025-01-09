---
  title: "Estadística y R para Ciencias de la Salud"
author: "Lídia Sànchez Camós"
date: "`r Sys.Date()`"
output: html_document
---
  
  ```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

## Actividad 1 - Representación gráfica de datos y análisis de resultados

Cargar librerias

```{r Librerias, echo=TRUE}
rm(list=ls())
library(ggplot2)
library(patchwork)
library(pheatmap)
```
Cargamos los datos de trabajo

```{r datos, echo=TRUE}
datos_genes <- read.csv("Dataset expresión genes.csv", sep = ",", header = TRUE)
names(datos_genes)
```

Pregunta 1: Teniendo en cuenta los siguientes genes: AQ_ALOX5, AQ_CD274,AQ_CHKA, AQ_CSF2, AQ_FOXO3, AQ_IL6, AQ_LDHA, AQ_LIF, AQ_MAPK1, AQ_NOS2,AQ_IFNG, AQ_PDCD1, AQ_PPARG, AQ_TGFB1, AQ_TNF: 
  
  a). Para responder este ejercicio, apóyate en un diagrama de cajas en el que
visualices por cada expresión de gen 2 cajas: 1 para tratA y otro para tratB.

Crear gráfico para cada gen (Boxplots)

```{r boxplots, echo=TRUE}
plot_AQ_ALOX5 <- ggplot(datos_genes, aes(x = trat, y = AQ_ALOX5, fill = trat)) +
  geom_boxplot() +
  scale_fill_manual(values = c("tratA" = "skyblue", "tratB" = "gold"))+
  labs(title = "Expresión de AQ_ALOX5",
       x = "Tratamiento",
       y = "Expresión") +
  theme_minimal()

plot_AQ_ALOX5

plot_AQ_CD274 <- ggplot(datos_genes, aes(x = trat, y = AQ_CD274, fill = trat)) +
  geom_boxplot() +
  scale_fill_manual(values = c("tratA" = "skyblue", "tratB" = "gold"))+
  labs(title = "Expresión de AQ_CD274",
       x = "Tratamiento",
       y = "Expresión") +
  theme_minimal()

plot_AQ_CD274 

plot_AQ_CHKA <- ggplot(datos_genes, aes(x = trat, y = AQ_CHKA, fill = trat)) +
  geom_boxplot() +
  scale_fill_manual(values = c("tratA" = "skyblue", "tratB" = "gold"))+
  labs(title = "Expresión de _AQ_CHKA",
       x = "Tratamiento",
       y = "Expresión") +
  theme_minimal()

plot_AQ_CHKA


plot_AQ_CSF2 <- ggplot(datos_genes, aes(x = trat, y = AQ_CSF2, fill = trat)) +
  geom_boxplot() +
  scale_fill_manual(values = c("tratA" = "skyblue", "tratB" = "gold"))+
  labs(title = "Expresión de AQ_CFS2",
       x = "Tratamiento",
       y = "Expresión") +
  theme_minimal()

plot_AQ_CSF2


plot_AQ_FOXO3 <- ggplot(datos_genes, aes(x = trat, y = AQ_FOXO3, fill = trat)) +
  geom_boxplot() +
  scale_fill_manual(values = c("tratA" = "skyblue", "tratB" = "gold"))+
  labs(title = "Expresión de AQ_FOXO3",
       x = "Tratamiento",
       y = "Expresión") +
  theme_minimal()

plot_AQ_FOXO3


plot_AQ_IL6 <- ggplot(datos_genes, aes(x = trat, y = AQ_IL6, fill = trat)) +
  geom_boxplot() +
  scale_fill_manual(values = c("tratA" = "skyblue", "tratB" = "gold"))+
  labs(title = "Expresión de AQ_IL6",
       x = "Tratamiento",
       y = "Expresión") +
  theme_minimal()

plot_AQ_IL6


plot_AQ_LDHA <- ggplot(datos_genes, aes(x = trat, y = AQ_LDHA, fill = trat)) +
  geom_boxplot() +
  scale_fill_manual(values = c("tratA" = "skyblue", "tratB" = "gold"))+
  labs(title = "Expresión de AQ_LDHA",
       x = "Tratamiento",
       y = "Expresión") +
  theme_minimal()

plot_AQ_LDHA


plot_AQ_LIF <- ggplot(datos_genes, aes(x = trat, y = AQ_LIF, fill = trat)) +
  geom_boxplot() +
  scale_fill_manual(values = c("tratA" = "skyblue", "tratB" = "gold"))+
  labs(title = "Expresión de AQ_LIF",
       x = "Tratamiento",
       y = "Expresión") +
  theme_minimal()

plot_AQ_LIF


plot_AQ_MAPK1 <- ggplot(datos_genes, aes(x = trat, y = AQ_MAPK1, fill = trat)) +
  geom_boxplot() +
  scale_fill_manual(values = c("tratA" = "skyblue", "tratB" = "gold"))+
  labs(title = "Expresión de AQ_MAPK1",
       x = "Tratamiento",
       y = "Expresión") +
  theme_minimal()

plot_AQ_MAPK1


plot_AQ_NOS2 <- ggplot(datos_genes, aes(x = trat, y = AQ_NOS2, fill = trat)) +
  geom_boxplot() +
  scale_fill_manual(values = c("tratA" = "skyblue", "tratB" = "gold"))+
  labs(title = "Expresión de AQ_NOS2",
       x = "Tratamiento",
       y = "Expresión") +
  theme_minimal()

plot_AQ_NOS2


plot_AQ_IFNG <- ggplot(datos_genes, aes(x = trat, y = AQ_IFNG, fill = trat)) +
  geom_boxplot() +
  scale_fill_manual(values = c("tratA" = "skyblue", "tratB" = "gold"))+
  labs(title = "Expresión de AQ_IFNG",
       x = "Tratamiento",
       y = "Expresión") +
  theme_minimal()

plot_AQ_IFNG


plot_AQ_PDCD1 <- ggplot(datos_genes, aes(x = trat, y = AQ_PDCD1, fill = trat)) +
  geom_boxplot() +
  scale_fill_manual(values = c("tratA" = "skyblue", "tratB" = "gold"))+
  labs(title = "Expresión de AQ_PDCD1",
       x = "Tratamiento",
       y = "Expresión") +
  theme_minimal()

plot_AQ_PDCD1

plot_AQ_PPARG <- ggplot(datos_genes, aes(x = trat, y = AQ_PPARG, fill = trat)) +
  geom_boxplot() +
  scale_fill_manual(values = c("tratA" = "skyblue", "tratB" = "gold"))+
  labs(title = "Expresión de AQ_PPARG",
       x = "Tratamiento",
       y = "Expresión") +
  theme_minimal()

plot_AQ_PPARG


plot_AQ_TGFB1 <- ggplot(datos_genes, aes(x = trat, y = AQ_TGFB1, fill = trat)) +
  geom_boxplot() +
  scale_fill_manual(values = c("tratA" = "skyblue", "tratB" = "gold"))+
  labs(title = "Expresión de AQ_TGFB1",
       x = "Tratamiento",
       y = "Expresión") +
  theme_minimal()

plot_AQ_TGFB1

plot_AQ_TNF <- ggplot(datos_genes, aes(x = trat, y = AQ_TNF, fill = trat)) +
  geom_boxplot() +
  scale_fill_manual(values = c("tratA" = "skyblue", "tratB" = "gold"))+
  labs(title = "Expresión de AQ_TNF",
       x = "Tratamiento",
       y = "Expresión") +
  theme_minimal()

plot_AQ_TNF
```

Combinar los gráficos en un solo layout con 3 columnas con Patchwork
```{r Conjunto boxplots, echo=FALSE, , echo=TRUE}
combined_plot <- plot_AQ_ALOX5 + plot_AQ_CD274 + plot_AQ_CHKA + plot_AQ_CSF2 +
  plot_AQ_FOXO3 + plot_AQ_IL6 + plot_AQ_LDHA + plot_AQ_LIF +
  plot_AQ_MAPK1 + plot_AQ_NOS2 + plot_AQ_IFNG + plot_AQ_PDCD1 +
  plot_AQ_PPARG + plot_AQ_TGFB1 + plot_AQ_TNF +
  plot_layout(ncol = 3)

combined_plot
```

b). ¿Qué interpretación sacas de la distribución de la expresión de los genes cuando los comparamos por tipo de tratamiento?
  
  Los gráficos de cajas muestran que algunos genes, como AQ_ALOX5 y AQ_CHKA, tienen niveles de expresión más altos en un tratamiento que en otro. Esto sugiere que los tratamientos podrían estar afectando de manera diferente procesos relacionados con la inflamación y el metabolismo lipídico. Por ejemplo, AQ_ALOX5, que participa en la síntesis de leucotrienos, puede estar más activo en pacientes bajo tratA, lo que indicaría una influencia directa en las vías inflamatorias [1,2].

Por otro lado, genes asociados a la respuesta inmune, como AQ_IL6 y AQ_TNF, muestran mucha variabilidad en sus niveles de expresión, con valores atípicos destacados. Esto podría deberse a diferencias individuales entre los pacientes o a estados de salud específicos antes del tratamiento. Estas citoquinas desempeñan un papel clave en la inflamación y podrían ser útiles para predecir qué pacientes responderían mejor al tratamiento [3,4].

Además, AQ_CSF2, que está relacionado con la estimulación de células inmunes, presenta una mayor dispersión en tratB. Esto sugiere que este tratamiento puede afectar más la activación de estas células, posiblemente influyendo en la respuesta inmune global de los pacientes [5].

La variabilidad observada en genes clave subraya la importancia de analizar las diferencias individuales. Esto podría ayudar a identificar tratamientos más efectivos o a reducir posibles efectos secundarios, dependiendo del perfil genético de cada paciente [3,6].



Pregunta 2:Teniendo en cuenta los siguientes parámetros bioquímicos para toda la población: glucosa, leucocitos, linfocitos, neutrofilos, chol, hdl, hierro, igA, igE, igG, igN, ldl, pcr, transferrina, trigliceridos, cpk:
  
  a). Para responder este ejercicio, apóyate en un histograma en el que se visualice la frecuencia de cada variable utilizando aproximadamente 30 bins (a mayor bins, mayor número de barras).

Cargamos las librerias para este apartado
```{r libreria 2, echo=FALSE, , echo=TRUE}
library(ggplot2)
```

Creamos un ggplot para cada variable

```{r histogramas, echo=FALSE, , echo=TRUE}
histo_Glucosa <-ggplot(data = datos_genes, aes(x = glucosa)) +
  geom_histogram(aes(y = ..density..),bins = 30, fill = "skyblue", color = "black") +
  geom_density(color = "darkblue", linewidth = 1) +
  labs(title = "Distribución de Glucosa en Pacientes",
       x = "Nivel de Glucosa", y = "Frecuencia") +
  theme_minimal()

histo_Glucosa  


histo_Leucocitos <-ggplot(data = datos_genes, aes(x = leucocitos)) +
  geom_histogram(aes(y = ..density..),bins = 30, fill = "skyblue", color = "black") +
  geom_density(color = "darkblue", linewidth = 1) +
  labs(title = "Distribución de Leucocitos en Pacientes",
       x = "Nivel de Leucocitos", y = "Frecuencia") +
  theme_minimal()

histo_Leucocitos


histo_Neutrofilos <-ggplot(data = datos_genes, aes(x = neutrofilos)) +
  geom_histogram(aes(y = ..density..),bins = 30, fill = "skyblue", color = "black") +
  geom_density(color = "darkblue", linewidth = 1) +
  labs(title = "Distribución de Neutrofilos en Pacientes",
       x = "Nivel de Neutrofilos", y = "Frecuencia") +
  theme_minimal()

histo_Neutrofilos


histo_Chol <-ggplot(data = datos_genes, aes(x = chol)) +
  geom_histogram(aes(y = ..density..),bins = 30, fill = "skyblue", color = "black") +
  geom_density(color = "darkblue", linewidth = 1) +
  labs(title = "Distribución de Cholesterol en Pacientes",
       x = "Nivel de Cholesterol", y = "Frecuencia") +
  theme_minimal()

histo_Chol


histo_Hdl <-ggplot(data = datos_genes, aes(x = hdl)) +
  geom_histogram(aes(y = ..density..),bins = 30, fill = "skyblue", color = "black") +
  geom_density(color = "darkblue", linewidth = 1) +
  labs(title = "Distribución de Hdl en Pacientes",
       x = "Nivel de Hdl", y = "Frecuencia") +
  theme_minimal()

histo_Hdl


histo_Hierro <-ggplot(data = datos_genes, aes(x = hierro)) +
  geom_histogram(aes(y = ..density..),bins = 30, fill = "skyblue", color = "black") +
  geom_density(color = "darkblue", linewidth = 1) +
  labs(title = "Distribución de Hierro en Pacientes",
       x = "Nivel de Hierro", y = "Frecuencia") +
  theme_minimal()

histo_Hierro


histo_igA <-ggplot(data = datos_genes, aes(x = igA)) +
  geom_histogram(aes(y = ..density..),bins = 30, fill = "skyblue", color = "black") +
  geom_density(color = "darkblue", linewidth = 1) +
  labs(title = "Distribución de igA en Pacientes",
       x = "Nivel de igA", y = "Frecuencia") +
  theme_minimal()

histo_igA


histo_igE <-ggplot(data = datos_genes, aes(x = igE)) +
  geom_histogram(aes(y = ..density..),bins = 30, fill = "skyblue", color = "black") +
  geom_density(color = "darkblue", linewidth = 1) +
  labs(title = "Distribución de igE en Pacientes",
       x = "Nivel de igE", y = "Frecuencia") +
  theme_minimal()

histo_igE


histo_igG <-ggplot(data = datos_genes, aes(x = igG)) +
  geom_histogram(aes(y = ..density..),bins = 30, fill = "skyblue", color = "black") +
  geom_density(color = "darkblue", linewidth = 1) +
  labs(title = "Distribución de igG en Pacientes",
       x = "Nivel de igG", y = "Frecuencia") +
  theme_minimal()

histo_igG


histo_igN <-ggplot(data = datos_genes, aes(x = igN)) +
  geom_histogram(aes(y = ..density..),bins = 30, fill = "skyblue", color = "black") +
  geom_density(color = "darkblue", linewidth = 1) +
  labs(title = "Distribución de igN en Pacientes",
       x = "Nivel de igN", y = "Frecuencia") +
  theme_minimal()

histo_igN


histo_ldl <-ggplot(data = datos_genes, aes(x = ldl)) +
  geom_histogram(aes(y = ..density..),bins = 30, fill = "skyblue", color = "black") +
  geom_density(color = "darkblue", linewidth = 1) +
  labs(title = "Distribución de ldl en Pacientes",
       x = "Nivel de ldl", y = "Frecuencia") +
  theme_minimal()

histo_ldl


histo_pcr <-ggplot(data = datos_genes, aes(x = pcr)) +
  geom_histogram(aes(y = ..density..),bins = 30, fill = "skyblue", color = "black") +
  geom_density(color = "darkblue", linewidth = 1) +
  labs(title = "Distribución de pcr en Pacientes", 
       x = "Nivel de pcr", y = "Frecuencia") +
  theme_minimal()

histo_pcr


histo_Transferrina <-ggplot(data = datos_genes, aes(x = transferrina)) +
  geom_histogram(aes(y = ..density..),bins = 30, fill = "skyblue", color = "black") +
  geom_density(color = "darkblue", linewidth = 1) +
  labs(title = "Distribución de Transferrina en Pacientes",
       x = "Nivel de Transferrina", y = "Frecuencia") +
  theme_minimal()

histo_Transferrina


histo_Trigliceridos <-ggplot(data = datos_genes, aes(x = trigliceridos)) +
  geom_histogram(aes(y = ..density..),bins = 30, fill = "skyblue", color = "black") +
  geom_density(color = "darkblue", linewidth = 1) +
  labs(title = "Distribución de Trigliceridos en Pacientes",
       x = "Nivel de Trigliceridos", y = "Frecuencia") +
  theme_minimal()

histo_Trigliceridos


histo_cpk <- ggplot(data = datos_genes, aes(x = cpk)) +
  geom_histogram(aes(y = ..density..), bins = 30, fill = "skyblue", color = "black") +
  geom_density(color = "darkblue", linewidth = 1) +
  labs(title = "Distribución de cpk en Pacientes",
       x = "Nivel de cpk", y = "Frecuencia") +
  theme_minimal()

histo_cpk
```

Combinamos los graficos para una visualización mejor en la comparativa

```{r histogramas combinados, echo=FALSE, , echo=TRUE}
combined_plot <- histo_Glucosa + histo_Leucocitos + histo_Neutrofilos + histo_Chol +
  histo_Hdl + histo_Hierro + histo_igA + histo_igE +
  histo_igG + histo_igN + histo_ldl + histo_pcr +
  histo_Transferrina + histo_Trigliceridos + histo_cpk +
  plot_layout(ncol = 3)

combined_plot
```

b). ¿Qué interpretación sacas de la distribución de los datos de las variables bioquímicas en toda la población?
  
  Los histogramas permiten identificar las características de la distribución de las variables bioquímicas en la población estudiada. Algunas variables, como glucosa, colesterol, HDL y triglicéridos, muestran distribuciones con un pico central más pronunciado, lo que sugiere una tendencia hacia valores promedio en la población. Esto es consistente con patrones esperados en parámetros bioquímicos de poblaciones clínicas generales, reflejando un rango saludable o común en la mayoría de los pacientes [1] [2].

Por otro lado, algunas variables presentan distribuciones sesgadas o asimétricas, como IgE, PCR, y CPK, lo que indica la presencia de valores atípicos o elevaciones significativas en una porción menor de la población. Estas características pueden deberse a factores subyacentes, como respuestas inmunológicas anormales o condiciones clínicas específicas que alteran estos niveles [3].

La dispersión observada en variables como hierro, transferrina, y leucocitos sugiere una mayor heterogeneidad entre los pacientes, lo que puede reflejar diferencias fisiológicas individuales o una variabilidad en las condiciones de salud de la población analizada. Este patrón de variabilidad biológica es esencial para estudios clínicos, ya que permite identificar subgrupos de pacientes con características únicas que podrían ser relevantes para el diagnóstico, tratamiento, o pronóstico de enfermedades [4] [5].

En general, las distribuciones muestran que las variables bioquímicas tienen niveles de dispersión y centralización diferenciados, lo cual es esperable en un conjunto de datos que incluye pacientes con condiciones de salud diversas. El análisis de estas distribuciones puede proporcionar información valiosa para identificar anomalías clínicas o definir rangos normales en este grupo específico de pacientes[1] [3] [6].

c). ¿Crees que sigue una distribución normal o simétrica en la que se visualiza una distribución parecida a una campana de Gauss?
  
  A simple vista, es evidente que no todas las variables siguen una distribución normal o simétrica. Algunas, como glucosa y colesterol, muestran una distribución que se aproxima a una campana de Gauss, con una acumulación de valores en torno a la media y una disminución gradual hacia los extremos. Esto podría indicar una aproximación a la normalidad, aunque sería necesario un análisis estadístico más detallado para confirmarlo. Por otro lado, variables como PCR, IgE, y CPK presentan una distribución claramente asimétrica, con valores acumulados en el extremo inferior y unos pocos valores en el extremo superior, sugiriendo una distribución sesgada a la derecha. Esto indica que la mayoría de los individuos tienen niveles bajos de estos parámetros, pero hay algunos individuos con niveles significativamente más altos. 


Pregunta 3: Mapea todos los valores de expresión de genes para poder visualizar posibles patrones entre los datos de los pacientes:
  
  a). Para responder esta pregunta, apóyate en un heatmap en el que visualices los datos crudos de todas las variables AQ (expresión de genes). 

Instalar y cargar dplyr si no está instalado

```{r librerias 3, echo=FALSE, , echo=TRUE}
library(pheatmap)
library(dplyr)
```

Configurar la semilla de aleatorización para reproducibilidad

```{r semilla, echo=FALSE, , echo=TRUE}
set.seed(1995)
```

Seleccionar las columnas con datos de expresión de genes y escalar los datos

```{r escalada datos, echo=FALSE, , echo=TRUE}
genes_data <- datos_genes %>%
  select(starts_with("AQ_")) %>%
  scale() # Escala los datos para normalizarlos
```

Transponer los datos para que los pacientes estén en las columnas y los genes en las filas

```{r transposición datos, echo=FALSE, , echo=TRUE}
genes_data_t <- t(genes_data)
```

Crear el heatmap

```{r heatmap, echo=FALSE, , echo=TRUE}
pheatmap(
  genes_data_t,
  cluster_rows = TRUE,    # Agrupa las filas jerárquicamente
  cluster_cols = TRUE,    # Agrupa las columnas jerárquicamente
  display_numbers = FALSE,
  color = colorRampPalette(c("navy", "white", "firebrick"))(50), # Paleta de colores
  main = "Heatmap de Expresión de Genes", 
  fontsize = 10,          # Tamaño de letra
  cutree_rows = 3,        # Opcional: Número de grupos en filas
  cutree_cols = 3         # Opcional: Número de grupos en columnas
)

print(pheatmap)
```

b). ¿Hay algún tipo de patrón de pacientes que tiene la expresión de genes similar o diferenciada?
  
  Al observar el heatmap, se pueden identificar patrones diferenciados entre los pacientes. Los pacientes agrupados en las mismas ramas del dendrograma tienen perfiles similares de expresión génica, indicando una posible relación biológica o clínica entre ellos. Por ejemplo, en las columnas, se observan grupos de pacientes que comparten patrones de alta o baja expresión en ciertas áreas del heatmap, lo que sugiere que estos pacientes podrían compartir características comunes, como respuesta a tratamientos, subtipos de enfermedades o variantes genéticas.

Además, también se observan pacientes con perfiles de expresión muy distintos, ubicados en ramas lejanas del dendrograma, lo que podría indicar una diferenciación significativa en sus características biológicas.


c). ¿Hay grupos de genes con patrones de expresión similares o diferenciadas? 
  
  En el eje Y, que corresponde a los genes, el dendrograma también muestra agrupamientos claros de genes con patrones de expresión similares. Estos genes pueden tener funciones relacionadas o formar parte de las mismas vías biológicas. Por ejemplo, ciertos grupos de genes tienen expresiones consistentemente altas o bajas en un conjunto específico de pacientes, lo que podría indicar co-regulación o participación en procesos celulares comunes.

Por otro lado, algunos genes presentan expresiones que varían significativamente entre los diferentes grupos de pacientes, lo que podría sugerir una diferenciación funcional o implicaciones específicas en ciertos subgrupos de pacientes.


BIBLIOGRAFIA
[1] Samuelsson B. Leukotrienes: mediators of immediate hypersensitivity reactions and inflammation. Science. 1983;220(4597):568-75.

[2] Peters-Golden M, Henderson WR. Leukotrienes. N Engl J Med. 2007;357(18):1841-54.

[3] Hunter CA, Jones SA. IL-6 as a keystone cytokine in health and disease. Nat Immunol.
2015;16(5):448-57.

[4] Heink S, Yogev N, Garbers C, et al. Trans-presentation of IL-6 by dendritic cells is required for the priming of pathogenic TH17 cells. Nat Immunol. 2017;18(1):74-85.

[5] Hamilton JA. GM-CSF in inflammation and autoimmunity. Trends Immunol. 2002;23(8):403-8.

[6] Lindeman A, Jansen R, Olde Loohuis LM, et al. Genetic pathways influencing immune response variability identified using a gene-based association study. Cell Rep Med. 2022;3(4):100528.

[7] Bivona G, Agnello L, Ciaccio M. Biomarkers for prognosis and treatment response in COVID-19 patients. Annals of Laboratory Medicine. 2021;41(6):540-548. doi:10.3343/alm.2021.41.6.540

[8] Roche HM, Gibney MJ. Postprandial triacylglycerolaemia: The effect of low-fat dietary treatment with and without fish oil supplementation. British Journal of Nutrition. 2020;124(S1)
. doi:10.1017/S000711452000128X

[9] Ulrich-Lai YM, Ryan KK. Neuroendocrine circuits governing energy balance and stress regulation: Functional overlap and therapeutic implications. Cell Metabolism. 2020;32(1):12-24. doi:10.1016/j.cmet.2020.06.001

[10] Ferrante AW Jr. The immune cells in adipose tissue. Diabetes Obesity and Metabolism. 2021;23(S3):27-38. doi:10.1111/dom.14238

[11] Krug EG, Mercy JA, Dahlberg LL, Zwi AB. The global status report on violence prevention 2014. Nature Reviews Endocrinology. 2021;17(3):137-149. doi:10.1038/s41574-020-00442-1

[12] Boulet LP, Reddel HK, Bateman ED, Pedersen SE, FitzGerald JM. The Global Initiative for Asthma (GINA): 25 years of improving asthma care. Nature Reviews Disease Primers. 2021;7(1):1-14. doi:10.1038/s41572-021-00268-3