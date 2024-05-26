# Análisis de Supervivencia en Adopciones de Gatos 🐱

![Portada](cat-3169476_960_720.jpg)

Este proyecto, realizado para la materia de Métodos Analíticos, investiga si el color del pelaje de un gato influye en el tiempo que tarda en ser adoptado en un refugio de animales. Utilizamos datos del refugio de Austin, Texas, y modelos de supervivencia para abordar esta pregunta.

[Presentación](https://docs.google.com/presentation/d/18lL-8XWcspopfLmuYaP_wnypP6KRHQ3d4iEW54C6NfU/edit?usp=sharing).

## Motivación ✨

Los gatos negros a menudo enfrentan desafíos adicionales para encontrar un hogar debido a supersticiones y estereotipos negativos. Este análisis busca proporcionar evidencia empírica sobre si estos gatos realmente experimentan tiempos de espera más largos para ser adoptados.

## Datos 📊

Los datos provienen del conjunto de datos "AustinCats" de la librería "rethinking" en R. Contienen información sobre gatos individuales, incluyendo:

* `color`: Color del pelaje del gato.
* `date_in`: Fecha de entrada al refugio.
* `date_out`: Fecha de salida del refugio (por adopción u otro motivo).
* `out_event`: Motivo de salida del refugio.
* `breed`: Raza del gato.
* `intake_age`: Edad del gato al ingresar al refugio.
* `in_event`: Motivo de entrada al refugio.

## Modelos 📈

Exploramos tres modelos de supervivencia:

1. **Modelo 1: Distribución Exponencial con Censura:** Este modelo paramétrico básico utiliza una distribución exponencial para modelar el tiempo de adopción, teniendo en cuenta los datos censurados (gatos que no fueron adoptados durante el período de estudio). El color del pelaje se incluye como predictor.

2. **Modelo 2: Distribución Exponencial sin Censura:** Este modelo es similar al Modelo 1, pero no considera los datos censurados. Se utiliza como punto de comparación para evaluar el impacto de los datos censurados en las estimaciones.

3. **Modelo 3: Distribución Exponencial con Covariables Adicionales:** Este modelo extiende el Modelo 1 al incluir variables adicionales como predictores, como la edad, la raza y el motivo de entrada al refugio.

La estimación de los parámetros de los modelos se realiza mediante métodos bayesianos utilizando Stan.

## Resultados 🔍

Los resultados preliminares sugieren que... (Aquí deberías incluir un resumen de tus principales hallazgos para cada modelo, comparando los resultados entre ellos y discutiendo si encontraste evidencia de que los gatos negros tardan más en ser adoptados o no).

## Uso 💻

1. Clona este repositorio.
2. Instala las librerías necesarias (`rethinking`, `tidyverse`, `cmdstanr`, etc.).
3. Ejecuta el código R para reproducir el análisis.

## Autores ✒️

* Sara Luz Valenzuela Camacho
* Gabriela Patricia Venegas Sánchez
* José Antonio Tapia Godínez

---
