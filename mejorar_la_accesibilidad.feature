 Feature: Mejorar la accesibilidad
    
    Incluye las US: US15, US16 y US18
    Comprende la mejora de accesibilidad sobre la interfaz y informacion de perfil
    
    Scenario: Permitir uso desde navegador.
    Given que el usuario ha creado una cuenta en la aplicación
    And el usuario ingresa a su navegador de preferencia
    And entra al sitio web de  Dress Assistant
    When el usuario selecciona “Iniciar Sesión”
    And el sistema verifica que las credenciales ingresadas son válidas
    Then el sistema cargará la información de la cuenta y mostrará el menú principal.
    
    Scenario: Adaptar la interfaz de usuario
    Given que el usuario ingresa al servicio desde un dispositivo o navegador
    When el usuario inicia sesión correctamente
    Then el sistema adaptará las dimensiones de la interfaz y el tamaño de los elementos gráficos acorde con el tamaño de la pantalla del dispositivo. 

    Escenario: Actualizar datos del usuario 
    Given que el usuario actualiza sus datos
    When el usuario modifica alguna información de su configuración
    Then el sistema actualiza los datos modificados en la base de datos de forma inmediata y responsiva.

