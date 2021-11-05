Feature: Proteger el tráfico de datos

    Representa la US17.
    Comprende certificar la confidencialidad y seguridad de los datos de los usuarios.

    Scenario:  Asegurar la privacidad datos del usuario
    Given que el usuario ha creado una cuenta
    When el usuario utiliza la aplicación
    And realiza modificaciones en su configuración
    Then el sistema encripta la información transportada hacia y desde la base de datos, para prevenir contra ataques de MITM.