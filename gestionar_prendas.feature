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

Scenario: Cambiar fondo al combinar prendas
Given el usuario se encuentra en el combinador de prendas
And el usuario selecciona el ícono de imagen de fondo
When el usuario selecciona un color o sube una foto de su dispositivo
Then se refresca la interfaz del combinador de prendas, con la nueva imagen o color de fondo.

Scenario: Buscar prendas por color
Given el usuario se encuentra en su “Armario”
And usuario selecciona el ícono de la lupa 
And usuario selecciona la opción “Por color”
When el usuario elige un color entre la gama proporcionada
Then se refresca la interfaz, mostrando solo las prendas de ese color.

Scenario: Buscar prendas por tipo
Given el usuario se encuentra en su “Armario”
And el usuario selecciona el ícono de la lupa 
And el usuario selecciona la opción “Por tipo de prenda”
When el usuario elige una opción de la lista desplegable, por ejemplo casaca
Then se refresca la interfaz, mostrando solo las prendas de ese tipo.

Scenario: Buscar prendas por clima
Given el usuario se encuentra en su “Armario”
And el usuario selecciona el ícono de la lupa 
And el usuario selecciona la opción “Por clima”
When el usuario mueve el círculo deslizante para situarlo en una posición de la barra que va de frío a caliente
Then la IA realiza la comparación con los datos registrados de todos los usuarios (del mismo tipo de perfil) y filtros pasados
And refresca la interfaz, dejando de mostrar los tipos de prenda menos usados a la temperatura elegida.
