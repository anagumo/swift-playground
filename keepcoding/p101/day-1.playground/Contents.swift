import UIKit

//Estrategia de evaluación
99

3.141592

-3.141592

Hola
/*
 error: p101.playground:10:1: error: cannot find 'Hola' in scope
 Hola
 ^~~~
 ha encontrado un error, lo que para mi es un texto para swift no lo es
 */

"hola"
//me ha contestado y lo repite

'hola'
/*
 entiende sólo cadenas con comillas dobles
 parece que entiende números, textos y si algo no le gusta se queja
 */

3 + 3
//consigue resolver operaciones matemáticas, sabe algebra

3 / 2

pow(3, 2)

3 + 4 * 2

(3+4) * 2
//simplifica lo que le digo, los operadores actúan en los números

"hola" + "manolo"
"hola" + " " + "manolo"

/*
 valores: cosas que se evaluan a si mismas
 operadores: actuan sobre los valores
 expresiones: combinancion de valores y operadores
 ej. de valores: números y cadenas
 */

//Expresiones más complejas
//Fórmula para calcular el perímetro de un círculo: 2 * π * r
2 * 3.141592 * 4
/*
 qué pasa si requiero calcular un nuevo perímetro
 DRY: No repitas un valor que no cambia
 La pereza productiva es una gran virtud del programador
 */

//Variables
/*
 * Con una variable puedes referirte a un valor, le das un nombre a un dato
 * Las variables se simplifican a su valor
 * No se puede cambiar el nombre de una variable
 * Repitiendo la definición puedes cambiar el valor
 * Nos permiten reutilizar valores
 */

let pi = 3.141592

2 * pi * 7

2 * pi * 3

//DRY: No repitas una expresión

//Funciones
/*
 sirven para reaprovechar una expresión
 func es una palabra reservada en swift, las palabras reservadas son propias del lenguaje
 * una función lleva un nombre
 * tiene 0 o más parámetros separados por coma
 * dentro tiene una definición de instrucciones
 */

// Vamos a cálcular el perímetro de un círculo creando la función permiter versión 1.0
func perimeter() { // en python usamos def
    2 * pi * 10 // en python sí se requiere la palabra reservada return
}
perimeter()

func perimeter(radius: Double) {
    2 * pi * radius
}
perimeter(radius: 10)

//Ejemplos de evaluación
/**
 (8+2) * 5:
    10 * 5
    50
 
 2 * pi:
    2  * 3.14159
    6.283178
 
 3 + perimeter(2):
    3 + (2 * pi * 2)
    3 + (2 * 3.14159 * 2)
    3 + (6.283178 * 2)
    3 + 12.5660104
    15.5660104
 */
