Feature: Registrar prendas

    Asociado a la US05.
    Comprende el diseño de la interfaz del armario virtual y la implementación del registro de prendas dentro de esta interfaz.

    Scenario: Registrar una prenda manualmente.
    Given que el usuario se encuentra en su “Armario”
    When el usuario selecciona el ícono de agregar prenda
    And selecciona el ícono de la cámara
    And toma una foto de su prenda
    And [opcionalmente] ingresa un nombre o título
    Then el sistema registra la prenda relacionándola al perfil específico del usuario y actualiza su armario.

    Scenario: Registrar una prenda de la base de datos.
    Given que el usuario se encuentra en su “Armario”
    When el usuario selecciona el ícono de agregar prenda
    And el usuario selecciona el ícono de la base de datos
    And el usuario ingresa los criterios de búsqueda, como nombre, marca, talla, tienda
    And el usuario selecciona una imagen entre los resultados de la búsqueda
    Then el sistema relaciona la prenda registrada en la base de datos con el perfil específico del usuario y actualiza su armario.