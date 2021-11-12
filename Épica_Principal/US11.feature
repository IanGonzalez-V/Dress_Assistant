Feature: US11 - Restaurar configuración predeterminada

    Como usuario premium, quiero poder borrar mis cambios a la configuración de recomendaciones para recibir las recomendaciones estándar o para facilitar la realización de una nueva configuración.

    Scenario: Restaurar la configuración original (estándar).
    Given que el usuario se encuentra en la interfaz de recomendaciones
    And el usuario ha completado el registro de su perfil
    And el usuario selecciona el ícono de limpiar
    When el usuario confirma que quiere restaurar la configuración original
    Then se borran en el sistema las modificaciones realizadas por el usuario y se restaura la configuración original.

    Examples:
    |    Registro de perfil   |  Botón Confirmar  |  Botón Limpiar  |  Botón Confirmar  |  
    |  registro_completado()  |  tactile_click()  | tactile_click() |  tactile_click()  |   

    |      Recomendación (1;1)    |       Recomendación (1;2)    |      Recomendación (1;3)    |
    |        borrar_atuendo()     |         borrar_atuendo()     |        borrar_atuendo()     |

    |      Recomendación (2;1)    |       Recomendación (2;2)    |      Recomendación (2;3)    |
    |        borrar_atuendo()     |         borrar_atuendo()     |        borrar_atuendo()     |


    