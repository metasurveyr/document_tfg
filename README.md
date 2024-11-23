# Descripción del proyecto metasurvey

Este paquete proporciona un conjunto de funciones para facilitar el análisis de datos de encuestas con diseño muestral utilizando técnicas de metaprogramación. En el paquete puedes crear pipelines de análisis reproducibles, y generar fácilmente informes y tablas. El paquete está diseñado para trabajar con el paquete `survey`, y es particularmente útil para diseños de encuestas complejos. El mismo fue desarrolado en el contexto del un trabajo final de grado de la Licenciatura en Estadística de la Facultad de Ciencias Económicas de la Universidad de la República.

La idea inicial fue motivada en base a lo dificil que resulta trabajar con microdatos de encuestas donde sus formularios son muy extensos y complejos, cambiando de un año a otro. Esto hace que sea muy dificil mantener actualizados los códigos de análisis de los datos o es necesario consultar a los expertos en cada tematica para entender la forma en que se codifican las variables y puede llevar a errores en la interpretación de los resultados.

Además en algunos casos se requiere analizar una serie de resultados de encuestas de diferentes años, lo que hace que sea necesario unificar los códigos de análisis de los datos para poder comparar los resultados a lo largo del tiempo y poder realizar análisis longitudinales, esto puede llegar a ser caotico mas que nada cuando se tienen muchos años de encuestas. Esto puede llegar a ser muy manual obteniendo indicadores de forma independiente para cada año y luego guardando los resultados en alguna tabla de Excel o en un archivo de texto.

En el caso de necesitar entender la forma en que se codifican las variables de las encuestas puede ser muy dificil, ya que dentro de cada programa estadístico la manipulación de los datos es diferente así como también el estilo de programación de cada usuario. A su vez puede ser que sea necesario contar con un software específico para poder analizar los datos de la encuesta, lo que puede ser un problema si no se cuenta con el mismo.

Por lo tanto, la idea de este paquete es poder facilitar el análisis de datos de encuestas con diseño muestral complejo, permitiendo la creación de pipelines de análisis reproducibles, y la generación de informes y tablas de forma sencilla. El paquete está diseñado para trabajar con el paquete `survey`, y es particularmente útil para diseños de encuestas complejos.

Además, el paquete proporciona un conjunto de funciones para facilitar la estimación de la varianza de diseños de encuestas complejos, y para facilitar el análisis de diseños de encuestas complejos utilizando el paquete `survey`.

Su desarrollo fue motivado en el desarrollo del portal [PRISMA](www.prisma.uy) que es un portal de datos abiertos de la Agencia Nacional de Investigación e Innovación (ANII) de Uruguay. En el portal se encuentran diferentes secciones donde la sección de Innovación y Género cuenta con una serie de indicadores que provienen de encuestas por muestreo. Construir estos indicadores en forma histórica y poder compararlos a lo largo del tiempo es un desafío, ya que las encuestas cambian de un año a otro y los códigos de análisis de los datos deben ser actualizados donde también puede ser transparente al usuario final la forma en que se codifican las variables.

En 2022 se fue presentado en el LatinR 2022 en su versión previa [srvyuRu](https://github.com/mauroloprete/srvyuRu). Esta versión era demasiado lenta tanto al momento de realizar cálculos como al momento de poder transparentar la forma en que se codifican las variables. Por lo tanto, en 2023 se decidió reescribir el paquete en su totalidad y se decidió cambiar el nombre del paquete a `metasurvey` haciendo referencia a la meta-programación que se utiliza en el paquete en conjunto con el paquete `survey`.

En el paquete se pueden encontrar funciones para facilitar la carga de datos de encuestas, la recodificación de variables, la estimación de la varianza de diseños de encuestas complejos, la generación de tablas y gráficos, y la generación de informes. Además, se pueden encontrar funciones para facilitar la creación de pipelines de análisis reproducibles, y para facilitar la generación de informes y tablas de forma sencilla.

La documentación del paquete se encuentra en [metasurveyr.github.io/metasurvey](https://metasurveyr.github.io/metasurvey/) y el código fuente del paquete se encuentra en [github.com/metasurveyr/metasurvey](https:://github.com/metasurveyr/metasurvey), donde se puede participar en el desarrollo del paquete y reportar errores.

A lo largo del proyecto fueron utilizadas diferentes herramientas tanto dentro  de R como fuera de R. Dentro de R se utilizó el paquete `devtools` para la creación del paquete, el paquete `roxygen2` para la documentación del paquete, el paquete `testthat` para la creación de tests unitarios, el paquete `pkgdown` para la creación de la página web del paquete, el paquete `usethis` para la creación de issues y pull requests, y el paquete `covr` para la cobertura de los tests unitarios. Fuera de R se utilizó el paquete `pre-commit` para la creación de hooks de pre-commit, el paquete `codecov` para la cobertura de los tests unitarios, y el paquete `GitHub Actions` para la creación de workflows de GitHub Actions.

En el futuro se espera poder contar con más colaboradores para poder avanzar en el desarrollo del paquete y poder publicarlo en CRAN para que pueda ser utilizado por toda la comunidad de R. El paquete está abierto a la comunidad de R y en especial a estudiantes de la licenciatura en estadística con un enfoque en herramientas computacionales que quieran colaborar en el desarrollo del paquete.

Para revisar el estado actual del proyecto puede consultar el siguiente [cronograma](https://github.com/orgs/metasurveyr/projects/1/views/1) donde puede ver las tareas que se han realizado y las tareas que se tienen planificadas para el futuro del proyecto. También se encuentra una lista de [issues](https://github.com/metasurveyr/metasurvey/issues) donde se pueden encontrar los problemas que se han reportado y se pueden reportar nuevos problemas

A diciembre del 2024 el paquete no se encuentra disponible en CRAN pero se espera que en el 2025 este publicado en CRAN para que pueda ser utilizado por toda la comunidad de R. Mientras tanto, se puede instalar la versión de desarrollo desde el repositorio de Github con el siguiente código:

```{r}
# install.packages("devtools")
devtools::install_github("metasurveyR/metasurvey")
```
