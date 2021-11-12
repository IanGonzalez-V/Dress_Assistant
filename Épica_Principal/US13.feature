Feature: US13 - Configurar recomendación por estación

    Como usuario premium, quiero poder configurar las recomendaciones según la estación, para descartar fácilmente las prendas que no son pertinentes para la época del año.

    Scenario: Configurar recomendaciones por estación.
    Given que el usuario se encuentra en la configuración de recomendaciones
    And el usuario selecciona la opción “Estación”
    And el usuario elige una estación (verano, primavera, invierno u otoño).
    When el usuario confirma su elección seleccionando confirmar en la ventana emergente:  “Se configurará la búsqueda para la estación [estación elegida] \n Confirmar | Cancelar”
    Then el sistema registra este nuevo parámetro de filtro, el cual será aplicado por la IA empezando desde la siguiente recomendación hasta que el usuario vuelva a modificar el parámetro manualmente.
    And el usuario es regresado al menú de configuración de recomendaciones.

    Examples:
        |  Botón Estación  |  Botón Eligir Estación  |  Estación  |  Botón Confirmar  |  
        |  tactile_click() |      tactile_click()    |   Verano   |  tactile_click()  | 

        |  Botón Estación  |  Botón Eligir Estación  |  Estación  |  Botón Cancelar   |  
        |  tactile_click() |      tactile_click()    |  Invierno  |  tactile_click()  | 


    
