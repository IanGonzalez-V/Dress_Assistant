Feature: Configurar recomendaciones 
Incluye las US: US10, UA11, US12, US13, US14
Comprende la configuración del tipo de recomendación en la interfaz de recomendaciones 

Scenario: Comprar una prenda recomendada por la aplicación
Given el usuario seleccionó una prenda recomendada
And el usuario fue redireccionado a una tienda al seleccionar la opción “Comprar”
When el usuario concreta la compra de la prenda
And el usuario selecciona la función de retornar
Then se vuelve a presentar el menú de recomendaciones
And se recibe en una cuenta un monto como comisión por la compra realizada por el usuario a través del enlace de afiliado. 

Scenario: Restaurar la configuración original (estándar).
Given el usuario se encuentra en la interfaz de recomendaciones
And el usuario ha completado el registro de su perfil
And el usuario selecciona el ícono de limpiar
When el usuario confirma que quiere restaurar la configuración original
Then se borran en el sistema las modificaciones realizadas por el usuario y se restaura la configuración original.

Scenario: Configurar recomendaciones para compra de ropa.
Given el usuario se encuentra en la configuración de recomendaciones
And el usuario selecciona la opción “Otras prendas”
And el usuario realiza sus configuraciones en la interfaz, que tiene con una recta de 0 a 100 con botón deslizante con título
“prendas nuevas / prendas recomendadas” y opciones de “Filtrar tiendas”, “Filtrar ubicación”, “Filtrar colección”.
When el usuario confirma su elección seleccionando el botón de “Confirmar”
Then el sistema registra de nuevo todos estos parámetros de filtro, que se aplicarán por la IA empezando desde la siguiente 
recomendación hasta que el usuario vuelva a modificar la configuración.
And el usuario es regresado al menú de configuración de recomendaciones.

Scenario: Configurar recomendaciones para compra de ropa.
Given el usuario se encuentra en la configuración de recomendación “Otras prendas”
When el usuario selecciona el botón de “Cancelar”
Then el usuario es regresado al menú de configuración de recomendaciones.

Scenario: Configurar recomendaciones por estación.
Given el usuario se encuentra en la configuración de recomendaciones
And el usuario selecciona la opción “Estación”
And el usuario elige una estación (verano, primavera, invierno u otoño).
When el usuario confirma su elección seleccionando confirmar en la ventana emergente:  
“Se configurará la búsqueda para la estación [estación elegida] \n Confirmar | Cancelar”
Then el sistema registra este nuevo parámetro de filtro, el cual será aplicado por la IA empezando 
desde la siguiente recomendación hasta que el usuario vuelva a modificar el parámetro manualmente.
And el usuario es regresado al menú de configuración de recomendaciones.


Scenario: Configurar recomendaciones por evento.
Given el usuario se encuentra en la configuración de recomendaciones
And el usuario selecciona la opción “Evento”
And el usuario elige una opción, entre “Reunión”, “Conferencia”, “Presentación”, “Venta”, “Junta”, “Evento público”.
When el usuario confirma su elección
Then el sistema registra este nuevo parámetro de filtro, el cual será aplicado por la IA empezando desde la siguiente 
recomendación hasta que el usuario vuelva a modificar el parámetro manualmente.
