Feature: US12 - Configurar recomendación para compra de ropa nueva

    FComo usuario premium, quiero poder seleccionar el porcentaje de la ropa recomendada que no poseo, para recibir recomendaciones de atuendos o piezas para comprar y tener nuevos atuendos.

Scenario: Configurar recomendaciones para compra de ropa.
Given que el usuario se encuentra en la configuración de recomendaciones
And el usuario selecciona la opción “Otras prendas”
And el usuario realiza sus configuraciones en la interfaz, que tiene con una recta de 0 a 100 con botón deslizante con título “% prendas nuevas / prendas recomendadas” y opciones de “Filtrar tiendas”, “Filtrar ubicación”, “Filtrar colección”.
When el usuario confirma su elección seleccionando el botón de “Confirmar”
Then el sistema registra de nuevo todos estos parámetros de filtro, que se aplicarán por la IA empezando desde la siguiente recomendación hasta que el usuario vuelva a modificar la configuración.
And el usuario es regresado al menú de configuración de recomendaciones.

Examples:
    | Botón Otras prendas | % prendas nuevas / prendas recomendadas | Botón Filtar ubicación |  Ubicación   | Botón Confirmar |
    |   tactile_click()   |                 69.50                   |   tactile_click()      | Lima, Surco  | tactile_click() |

Scenario: Configurar recomendaciones para compra de ropa.
Given que el usuario se encuentra en la configuración de recomendación “Otras prendas”
When el usuario selecciona el botón de “Cancelar”
Then el usuario es regresado al menú de configuración de recomendaciones.

Examples:
    | Botón Otras prendas |  Botón Cancelar  |
    |   tactile_click()   | tactile_click()  |

