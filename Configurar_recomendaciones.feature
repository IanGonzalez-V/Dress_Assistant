Feature: Configurar recomendaciones

    Incluye las US: US10, US12, US13, US14
    Comprende la configuracion de 

    Scenario: Visualizar recomendaciones al iniciar la aplicacion
    Given que el usuario ha iniciado sesion con una cuenta
    When el usuario abre la aplicacion
    Then se muestra la interfaz de recomendaciones
    And se muestra una fila de atuendos recomendados con las prendas del armario
    And una fila de atuendos recomendados, incluyendo prendas que el usuario no posee.

    Scenario: Visualizar recomendaciones desde el menu
    Given que el usuario se encuentra en el menu principal
    When el usuario selecciona la opcion “Recomendaciones”
    Then la IA elabora recomendaciones de atuendos teniendo en cuenta el perfil del usuario y la configuracion de recomendaciones
    And se presenta una nueva interfaz con una primera fila de 3 atuendos con ropa exclusivamente del armario
    And una segunda fila, con 3 atuendos elaborados tanto con prendas del armario como con prendas de la base de datos que el usuario no posee

    Scenario: Refrescar recomendaciones
    Given que el usuario se encuentra en la interfaz de recomendaciones
    When el usuario selecciona el botón de refrescar
    Then el sistema comunica la petición junto con la especificación de las prendas pertenecientes a los atuendos recomendaciones
    And la IA genera nuevas recomendaciones de atuendos compuestos por prendas distintas a las de las recomendaciones previas.

    Scenario: Redireccionar a tienda de una prenda recomendada
    Given que el usuario se encuentra en la interfaz de recomendaciones
    And el usuario ha seleccionado un atuendo 
    When el usuario selecciona una prenda registrada en la base de datos
    And el usuario selecciona la opción “Comprar”
    Then se le redirecciona a la página web donde puede comprar la prenda, mediante el uso de un enlace de afiliado.

    Scenario: Comprar una prenda recomendada por la aplicación
    Given que el usuario seleccionó una prenda recomendada
    And el usuario fue redireccionado a una tienda al seleccionar la opción “Comprar”
    When el usuario concreta la compra de la prenda
    And el usuario selecciona la función de retornar
    Then se vuelve a presentar el menú de recomendaciones
    And se recibe en una cuenta un monto como comisión por la compra realizada por el usuario a través del enlace de afiliado.

    Scenario: Configurar recomendaciones para compra de ropa.
    Given que el usuario se encuentra en la configuración de recomendaciones
    And el usuario selecciona la opción “Otras prendas”
    And el usuario realiza sus configuraciones en la interfaz, que tiene con una recta de 0 a 100 con botón deslizante con título “% prendas nuevas / prendas recomendadas” y opciones de “Filtrar tiendas”, “Filtrar ubicación”, “Filtrar colección”.
    When el usuario confirma su elección seleccionando el botón de “Confirmar”
    Then el sistema registra de nuevo todos estos parámetros de filtro, que se aplicarán por la IA empezando desde la siguiente recomendación hasta que el usuario vuelva a modificar la configuración.
    And el usuario es regresado al menú de configuración de recomendaciones.

    Scenario: Configurar recomendaciones para compra de ropa.
    Given que el usuario se encuentra en la configuración de recomendación “Otras prendas”
    When el usuario selecciona el botón de “Cancelar”
    Then el usuario es regresado al menú de configuración de recomendaciones.

    Scenario: Configurar recomendaciones por estación.
    Given que el usuario se encuentra en la configuración de recomendaciones
    And el usuario selecciona la opción “Estación”
    And el usuario elige una estación (verano, primavera, invierno u otoño).
    When el usuario confirma su elección seleccionando confirmar en la ventana emergente:  “Se configurará la búsqueda para la estación [estación elegida] \n Confirmar | Cancelar”
    Then el sistema registra este nuevo parámetro de filtro, el cual será aplicado por la IA empezando desde la siguiente recomendación hasta que el usuario vuelva a modificar el parámetro manualmente.
    And el usuario es regresado al menú de configuración de recomendaciones.

    Escenario: Configurar recomendaciones por evento.
    Given que el usuario se encuentra en la configuración de recomendaciones
    And el usuario selecciona la opción “Evento”
    And el usuario elige una opción, entre “Reunión”, “Conferencia”, “Presentación”, “Venta”, “Junta”, “Evento público”.
    When el usuario confirma su elección
    Then el sistema registra este nuevo parámetro de filtro, el cual será aplicado por la IA empezando desde la siguiente recomendación hasta que el usuario vuelva a modificar el parámetro manualmente.
