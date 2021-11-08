 Feature: Complementar funcionalidad de perfil
    
    Incluye la US: US4
    Comprende la implementacion de funciones de perfil
    
    Scenario: Crear otro perfil para la misma cuenta
    Given que el usuario se encuentra en el menú principal
    And el usuario selecciona el ícono del usuario 
    When el usuario selecciona la opción “Crear nueva perfil”
    And el sistema valida que solo tiene un perfil
    Then el sistema crea un nuevo perfil para la misma cuenta, que sea de tipo distinto al perfil existente
    And se muestra el menú de configuración de perfil.

    Scenario: Cambiar de perfil en la misma cuenta
    Given que el usuario se encuentra en el menú principal
    And el usuario selecciona el ícono del usuario 
    When el usuario selecciona la opción “Cambiar de perfil”
    And elige un perfil de la lista presentada
    Then el sistema carga la información de ese perfil desde su base de datos
    And se muestra el menú principal.
