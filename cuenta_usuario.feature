Feature: Crear y configurar cuenta de usuario

    Incluye las US: US01, US02 y US03
    Comprende la creación de cuenta/inicio de sesión y la configuración del perfil de usuario, tanto casual como profesional.

    Scenario: Crear cuenta
    Given que el usuario entra a la aplicación por primera vez
    And el usuario selecciona la opción “Registrarse”
    And el usuario ingresa su correo y nueva contraseña
    When el usuario selecciona la opción “Crear cuenta”
    Then el sistema registra su información de sesión en la base de datos y queda guardado
    And se muestra la interfaz con las opciones de perfil: “Casual” o “Profesional”.

    Scenario: Iniciar sesión con una cuenta existente
    Given que el usuario entra a la aplicación por primera vez
    And el usuario selecciona la opción “Iniciar sesión”
    And el usuario ingresa su correo y contraseña
    When el usuario selecciona la opción “Ingresar”
    And el sistema valida la existencia de la cuenta
    Then el sistema sincroniza la información guardada sobre la cuenta y la carga
    And se muestra el menú principal.

    Scenario: Registrar el perfil casual
    Given que es la primera vez que el usuario abre la aplicación y eligió la opción casual
    And el usuario ha respondido a todas las preguntas de la configuración del perfil
    When el usuario selecciona la opción “Configurar perfil”
    Then el sistema crea un nuevo perfil en su base de datos de perfiles casuales, donde guarda toda la configuración realizada
    And se muestra el menú principal.

    Scenario: Modificar el perfil casual
    Given que el usuario se encuentra en el menú principal
    And el usuario tiene un perfil casual
    And el usuario selecciona el ícono de usuario
    And el usuario modifica las respuestas que desea
    When el usuario selecciona la opción “Configurar perfil”
    Then el sistema modifica su perfil guardado en la base de datos, para actualizar las preferencias
    And se muestra el menú principal.

    Scenario: Registrar el perfil profesional
    Given que es la primera vez que el usuario abre la aplicación y eligió la opción profesional
    And el usuario ha respondido a todas las preguntas de la configuración del perfil, incluyendo preguntas sobre el código de vestimenta en su trabajo
    When el usuario selecciona la opción “Configurar perfil”
    Then el sistema crea un nuevo perfil en su base de datos de perfiles profesionales, donde guarda toda la configuración realizada
    And se muestra el menú principal.

    Scenario: Modificar el perfil profesional
    Given que el usuario se encuentra en el menú principal
    And el usuario tiene un perfil profesional
    And el usuario selecciona el ícono de usuario
    And el usuario modifica las respuestas que desea
    When el usuario selecciona la opción “Configurar perfil”
    Then el sistema modifica su perfil guardado en la base de datos, para actualizar las preferencias
    And se muestra el menú principal.