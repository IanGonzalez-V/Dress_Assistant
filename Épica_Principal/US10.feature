Feature: US10 - Recibir recomendaciones de atuendos

     Como usuario, quiero visualizar varios atuendos recomendados por la aplicación, para elegir entre ellos y vestirme con un atuendo de mi agrado sin estrés ni pérdida de tiempo.

Scenario: Visualizar recomendaciones al iniciar la aplicación
Given que el usuario ha iniciado sesión con una cuenta
When el usuario abre la aplicación
Then se muestra la interfaz de recomendaciones (como ventana)
And se muestra una fila de atuendos recomendados con las prendas del armario
And una fila de atuendos recomendados incluyendo prendas que el usuario no posee.

Examples:
    |                                  generar_atuendo_propio()                                |
    |      Casaca      |       Camisa      |      Pantalón     |     Correa    |     Zapatillas    |
    | casaca_negra.png |  camisa_rayas.png |   pantalon_3.png  | correa2.png   |       nike.png    |

    |      Recomendación (1;1)    |       Recomendación (1;2)    |      Recomendación (1;3)    |
    |  generar_atuendo_propio()   |  generar_atuendo_propio()    |  generar_atuendo_propio()   |

    |      Recomendación (2;1)    |       Recomendación (2;2)    |      Recomendación (2;3)    |
    |  generar_atuendo_híbrido()  |  generar_atuendo_híbrido()   |  generar_atuendo_híbrido()  |

Scenario: Visualizar recomendaciones desde el menú
Given que el usuario se encuentra en el menú principal
When el usuario selecciona la opción “Recomendaciones”
Then la IA elabora recomendaciones de atuendos, teniendo en cuenta el perfil del usuario y la configuración de recomendaciones
And se presenta una nueva interfaz con una primera fila de 3 atuendos con ropa exclusivamente del armario
And una segunda fila, con 3 atuendos elaborados tanto con prendas del armario como con prendas de la base de datos que el usuario no posee.

Examples:
    | Botón Recomendaciones | Perfil de usuario |  Configuración de recomendaciones  |
    |    tactile_click()    |  Casual premium   | obtener_configuracion_base_datos() |

    |                                  generar_atuendo_híbrido()                            |
    |      Polera    |      Polo       |      Jogger     |     Gorra     |     Zapatillas    |
    | polera2312.png |  polo_negro.png |  jogger4534.png | gorra0254.png |      nike.png     |

    |      Recomendación (1;1)    |       Recomendación (1;2)    |      Recomendación (1;3)    |
    |  generar_atuendo_propio()   |  generar_atuendo_propio()    |  generar_atuendo_propio()   |

    |      Recomendación (2;1)    |       Recomendación (2;2)    |      Recomendación (2;3)    |
    |  generar_atuendo_híbrido()  |  generar_atuendo_híbrido()   |  generar_atuendo_híbrido()  |

Scenario: Refrescar recomendaciones
Given que el usuario se encuentra en la interfaz de recomendaciones
When el usuario selecciona el botón de refrescar
Then el sistema comunica la petición junto con la especificación de las prendas pertenecientes a los atuendos recomendados
And la IA genera nuevas recomendaciones de atuendos compuestos por prendas distintas a las de las recomendaciones previas.

Examples:
    | Botón Refrescar  |             Petición           |
    | tactile_click()  | no_repetir_prendas(prendas[])  |

    |             generar_atuendo_híbrido()               |
    |      Polera    |      Vestido     |     Zapatos     |
    | polera6345.png |    fiesta_3.png  | zapa_fiesta.png |

    |      Recomendación (1;1)    |       Recomendación (1;2)    |      Recomendación (1;3)    |
    |  generar_atuendo_propio()   |  generar_atuendo_propio()    |  generar_atuendo_propio()   |

    |      Recomendación (2;1)    |       Recomendación (2;2)    |      Recomendación (2;3)    |
    |  generar_atuendo_híbrido()  |  generar_atuendo_híbrido()   |  generar_atuendo_híbrido()  |

Scenario: Redireccionar a tienda de una prenda recomendada
Given que el usuario se encuentra en la interfaz de recomendaciones
And el usuario ha seleccionado un atuendo
When el usuario selecciona una prenda registrada en la base de datos
And el usuario selecciona la opción “Comprar”
Then se le redirecciona a la página web donde puede comprar la prenda, mediante el uso de un enlace de afiliado.

Examples:
    | Recomendación (2;2) | polera6345.png  |  Botón Comprar   |                   Página web               |
    |   tactile_click()   | tactile_click() | tactile_click()  | https://www.amazon.com/Under-Armour-Hoodie/|

Scenario: Comprar una prenda recomendada por la aplicación
Given que el usuario seleccionó una prenda recomendada
And el usuario fue redireccionado a una tienda al seleccionar la opción “Comprar”
When el usuario concreta la compra de la prenda
And el usuario selecciona la función de retornar
Then se vuelve a presentar el menú de recomendaciones
And se recibe en una cuenta un monto como comisión por la compra realizada por el usuario a través del enlace de afiliado.

Examples:
    | Botón Concretar Compra |  Botón Retornar  |
    |         click()        | tactile_click()  |
