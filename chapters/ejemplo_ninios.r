library(metasurvey)
library(magrittr)

path_dir <- here::here("example-data", "ech", "ech_2023")

ech_2023 <- load_panel_survey(
    path_implantation = file.path(
        path_dir,
        "ECH_implantacion_2023.csv"
    ),
    path_follow_up = file.path(
        path_dir,
        "seguimiento"
    ),
    svy_type = "ECH_2023",
    svy_weight_implantation = add_weight(
        annual = add_replicate(
            "W_ANO",
            replicate_path = file.path(
                path_dir,
                "anual",
                "pesos replicados Bootstrap anual 2023.csv"
            ),
            replicate_id = c("ID" = "ID"),
            replicate_pattern = "wr[0-9]+",
            replicate_type = "bootstrap"
        )
    ),
    svy_weight_follow_up = add_weight(
        monthly = add_replicate(
            "W",
            replicate_path = file.path(
                path_dir,
                c(
                    "Pesos replicados Bootstrap mensuales enero_junio 2023",
                    "Pesos replicados Bootstrap mensuales julio_diciembre 2023"
                ),
                c(
                    "Pesos replicados mensuales enero_junio 2023",
                    "Pesos replicados mensuales Julio_diciembre 2023"
                )
            ),
            replicate_id = c("ID" = "ID"),
            replicate_pattern = "wr[0-9]+",
            replicate_type = "bootstrap"
        )
    )
)
ech_2023 <- ech_2023 %>%
    step_recode(
        "menor_a2",
        e27 <= 2 & nom_dpto == "Montevideo" ~ 1,
        .default = 0,
        .level = "implantation"
    )

ech_2023_bake <- bake_steps(ech_2023)

workflow(
    survey = list(ech_2023_bake$implantation),
    survey::svytotal(
        ~menor_a2
    ),
    estimation_type = "annual"
)


library(gt)

mercado_trabajo_mensual <- mercado_trabajo_mensual[
    ,
    `:=`(
        tasa = lapply(
            stat,
            FUN = function(stat) {
                ifelse(
                    stat == "survey::svyratio: pd/pea",
                    "Tasa de Desempleo",
                    ifelse(
                        stat == "survey::svyratio: pea/pet",
                        "Tasa de Actividad",
                        "Tasa de Ocupación"
                    )
                )
            }
        )
    )
]


mercado_trabajo_mensual <- mercado_trabajo_mensual[
    ,
    .(tasa, stat, type, value, se, cv, evaluate)
]


gt_table <- mercado_trabajo_mensual |>
    gt() |>
    tab_header(
        title = "Indicadores de Mercado de Trabajo",
        subtitle = "Estimaciones trimestrales a partir de datos mensuales"
    ) |>
    cols_label(
        stat = "Indicador",
        value = "Valor",
        se = "Error Estándar",
        cv = "CV",
        evaluate = "Evaluación",
        type = "Periodo"
    ) |>
    fmt_percent(
        columns = c(value, se),
        decimals = 1
    ) |>
    fmt_number(
        columns = cv,
        decimals = 4
    ) |>
    tab_source_note(
        source_note = "Fuente: Elaboración propia en base a ECH 2023"
    ) |>
    tab_options(
        table.font.size = px(12),
        data_row.padding = px(8),
        heading.background.color = "#f5f5f5",
        row.striping.background_color = "#f0f0f0"
    ) |>
    opt_row_striping() |>
    opt_table_font(
        font = list(google_font("Roboto"), default_fonts())
    )
