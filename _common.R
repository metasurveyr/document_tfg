status <- function(type) {
    status = switch(
        type,
        borrador = "Este capítulo está en borrador",
        validacion = "Este capítulo está en proceso de validación",
        completo = "Este capítulo está completo",
        borrardor_seccion = "Esta sección está en borrador"
    )

    class <- switch(type,
        validacion = "note",
        borrador = "important",
        borrador_seccion = "important",
        completo = "note"
    )

    mensaje <- switch(
        type,
        validacion = "Cualquier comentario es bienvenido",
        borrador = "Revise la rama de desarrollo",
        borrador_seccion = "Revise la rama de desarrollo",
        completo = "En caso de encontrar errores, por favor reportarlos"
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