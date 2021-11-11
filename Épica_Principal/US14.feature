Feature: Configurar recomendación por tipo de evento

    Como usuario premium y profesional, quiero obtener recomendaciones según el evento (reunión laboral, conferencia, junta con jefes, evento público), para evitar la necesidad de elegir el atuendo y poder concentrarme en prepararme para la ocasión.

Scenario: Configurar recomendaciones por evento.
Given que el usuario se encuentra en la configuración de recomendaciones
And el usuario selecciona la opción “Evento”
And el usuario elige una opción, entre “Reunión”, “Conferencia”, “Presentación”, “Venta”, “Junta”, “Evento público”.
When el usuario confirma su elección
Then el sistema registra este nuevo parámetro de filtro, el cual será aplicado por la IA empezando desde la siguiente recomendación hasta que el usuario vuelva a modificar el parámetro manualmente.

Examples:
    |   Botón Evento   | Botón Conferencia | Botón Confirmar  |
    | tactile_click()  |  tactile_click()  | tactile_click()  |