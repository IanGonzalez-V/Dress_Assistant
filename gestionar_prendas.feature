Feature: Gestionar prendas
Asociado a la US06, US07, US08 y US09
Comprende la creación de opciones dentro del armario virtual y la implementación de inteligencia artificial.


Scenario: Visualizar prendas
Given que el usuario encuentra en su “Armario”
When no eliga ninguna opción
Then el sistema ubicara las prendas del usuario
And serán mostradas en pantalla

Scenario: Ordenar el armario virtual
Given que el usuario encuentra en su “Armario”
When el usuario seleccione la opción “Ordenar” podrá ver varias opciones relacionadas con el tipo de orden que desee
And será capáz de seleccionar las opciones de su gusto
And se muestra en pantalla el nuevo orden
Then el nuevo orden será almacenado en la base de datos

Scenario: Combinar prendas
Given que el usuario encuentra en su “Armario”
When el usuario seleccione el icono de atuendo
And seleccione las prendas que desee combinar
And eliga el fondo
Then la interfaz se actualizará y mostrará el fondo con las prendas

Scenario: Filtrar prendas del armario
Given que el usuario encuentra en su “Armario”
When el usuario seleccione el icono de la lupa
And el usuario haya seleccionado sus opciones de filtrado
Then la interfaz se actualizará y mostrará las prendas con el filtro seleccionado
