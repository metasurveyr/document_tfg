status <- function(type) {
    status = switch(
        type,
        borrador = "Este capítulo está en borrador",
        validacion = "Este capítulo está en proceso de validación",
        completo = "Este capítulo está completo",
        borrardor_seccion = "Esta sección está en borrador",
        proceso = "Este capítulo está en proceso de escritura"
    )

    class <- switch(type,
        validacion = "note",
        borrador = "important",
        borrador_seccion = "important",
        completo = "note",
        proceso = "warning"
    )

    mensaje <- switch(
        type,
        validacion = "Cualquier comentario es bienvenido",
        borrador = "Revise la rama de desarrollo",
        borrador_seccion = "Revise la rama de desarrollo",
        completo = "En caso de encontrar errores, por favor reportarlos",
        proceso = "Consulte la rama de desarrollo para ver el avance del capítulo"
    )


    cat(paste0(
        "\n",
        ":::: status\n",
        "::: callout-", class, " \n",
        status, ". ",
        "\n",
        mensaje,
        "\n",
        ":::\n",
        "::::\n"
    ))
}