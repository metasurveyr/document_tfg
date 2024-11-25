# Descripción del proyecto metasurvey

Este paquete proporciona un conjunto de funciones para facilitar el análisis de datos de encuestas con diseño muestral utilizando técnicas de metaprogramación. Permite crear pipelines de análisis reproducibles y generar informes y tablas fácilmente. El paquete está diseñado para trabajar con `survey` y es particularmente útil para diseños de encuestas complejos. Fue desarrollado en el contexto de un trabajo final de grado de la Licenciatura en Estadística de la Facultad de Ciencias Económicas de la Universidad de la República.

La idea inicial surgió debido a la dificultad de trabajar con microdatos de encuestas cuyos formularios son extensos y complejos, y que cambian de un año a otro. Esto hace que sea difícil mantener actualizados los códigos de análisis de datos y puede llevar a errores en la interpretación de los resultados.

Además, en algunos casos se requiere analizar una serie de resultados de encuestas de diferentes años, lo que hace necesario unificar los códigos de análisis para poder comparar los resultados a lo largo del tiempo y realizar análisis longitudinales. Esto puede ser caótico, especialmente cuando se tienen muchos años de encuestas. A menudo, se obtienen indicadores de forma independiente para cada año y luego se guardan los resultados en una tabla de Excel o en un archivo de texto.

Entender cómo se codifican las variables de las encuestas puede ser muy difícil, ya que cada programa estadístico maneja los datos de manera diferente y cada usuario tiene su propio estilo de programación. Además, puede ser necesario contar con un software específico para analizar los datos de la encuesta, lo que puede ser un problema si no se dispone del mismo.

Por lo tanto, la idea de este paquete es facilitar el análisis de datos de encuestas con diseño muestral complejo, permitiendo la creación de pipelines de análisis reproducibles y la generación de informes y tablas de forma sencilla. El paquete está diseñado para trabajar con `survey` y es particularmente útil para diseños de encuestas complejos.

El paquete proporciona funciones para facilitar la estimación de la varianza de diseños de encuestas complejos y para el análisis de estos diseños utilizando `survey`.

Su desarrollo fue motivado por el portal [PRISMA](www.prisma.uy), un portal de datos abiertos de la Agencia Nacional de Investigación e Innovación (ANII) de Uruguay. En el portal, la sección de Innovación y Género cuenta con una serie de indicadores que provienen de encuestas por muestreo. Construir estos indicadores de forma histórica y compararlos a lo largo del tiempo es un desafío, ya que las encuestas cambian de un año a otro y los códigos de análisis deben ser actualizados, siendo transparente para el usuario final cómo se codifican las variables.

En 2022, se presentó una versión previa en LatinR 2022 llamada [srvyuRu](https://github.com/mauroloprete/srvyuRu). Esta versión era demasiado lenta tanto en los cálculos como en la transparencia de la codificación de variables. Por lo tanto, en 2023 se decidió reescribir el paquete en su totalidad y cambiar su nombre a `metasurvey`, haciendo referencia a la meta-programación utilizada en conjunto con `survey`.

El paquete incluye funciones para facilitar la carga de datos de encuestas, la recodificación de variables, la estimación de la varianza de diseños de encuestas complejos, la generación de tablas y gráficos, y la creación de informes. También facilita la creación de pipelines de análisis reproducibles y la generación de informes y tablas de forma sencilla.

La documentación del paquete está disponible en [metasurveyr.github.io/metasurvey](https://metasurveyr.github.io/metasurvey/) y el código fuente en [github.com/metasurveyr/metasurvey](https://github.com/metasurveyr/metasurvey), donde se puede colaborar en el desarrollo del paquete y reportar errores.

Durante el desarrollo del proyecto se utilizaron diversas herramientas tanto dentro como fuera de R. Dentro de R se usaron `devtools` para la creación del paquete, `roxygen2` para la documentación, `testthat` para tests unitarios, `pkgdown` para la página web del paquete, `usethis` para la creación de issues y pull requests, y `covr` para la cobertura de tests unitarios. Fuera de R se usaron `pre-commit` para hooks de pre-commit, `codecov` para la cobertura de tests unitarios, y `GitHub Actions` para workflows de GitHub Actions.

En el futuro, se espera contar con más colaboradores para avanzar en el desarrollo del paquete y publicarlo en CRAN para que pueda ser utilizado por toda la comunidad de R. El paquete está abierto a la comunidad de R y especialmente a estudiantes de estadística con un enfoque en herramientas computacionales que quieran colaborar en su desarrollo.

Para revisar el estado actual del proyecto, consulte el [cronograma](https://github.com/orgs/metasurveyr/projects/1/views/1) donde se pueden ver las tareas realizadas y planificadas. También hay una lista de [issues](https://github.com/metasurveyr/metasurvey/issues) donde se pueden reportar problemas.

A diciembre de 2024, el paquete no está disponible en CRAN, pero se espera que en 2025 esté publicado en CRAN para que pueda ser utilizado por toda la comunidad de R. Mientras tanto, se puede instalar la versión de desarrollo desde el repositorio de Github con el siguiente código:

```{r}
# install.packages("devtools")
devtools::install_github("metasurveyR/metasurvey")
```
