Feature: Gestionar prendas
Asociado a la US06, US07, US08 y US09
Comprende la creación de opciones dentro del armario virtual y la implementación de inteligencia artificial.


Scenario: Visualizar prendas
Given que el usuario encuentra en su “Armario”
When el usuario seleccione una prenda podrá visualizarla en pantalla completa
And interactuar con la prenda
Then el usuario puede regresar para ver su armario completo

Scenario: Ordenar el armario virtual
Given que el usuario encuentra en su “Armario”
When el usuario seleccione la opción “Ordenar” podrá ver varias opciones relacionadas con el tipo de orden que desee
And selecciona las opciones de su preferencia
And se muestra en pantalla el nuevo orden
Then el nuevo orden será almacenado en la base de datos

Scenario: Combinar prendas
Given que el usuario encuentra en su “Armario”
When el usuario seleccione la opción “Combinar”
And la inteligencia artificial combina las prendas
And las combinaciones son mostradas en pantalla
And puede descartar o destacar prendas que el usuario seleccione
Then las prendas destacadas serán guardadas en la cuenta

Scenario: Filtrar prendas del armario
Given que el usuario encuentra en su “Armario”
When el usuario selecciona la opción “Filtrar prendas”
And la inteligencia artificial filtra las prendas
Then las prendas con el filtro son mostradas en pantalla
