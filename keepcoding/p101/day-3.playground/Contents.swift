/**
 Usamos import para traer definiciones que están en un ámbito externo
 podemos taer todo el ámbito o parte de él, estos se llaman módulos
 En swift sólo podemos importar módulos en el scope del file
 */
import Foundation

//Laboratorio de ámbitos básicos
/**
 Si declaras demasiada variables globales algo va mal
 ¿qué definición es válida?
 ¿alguien le hace sombra a alguien? ¿shadowing?
 */

let name = "Fernando"

func fullName(name: String, surname: String) {
    /**
     El name que recibe como param es la definición válida de name
     El name local le hace sombra al name global
     */
    name + " " + surname
}
fullName(name: "Ariana", surname: "Rodríguez")
/**
 Ariana Rodríguez
 */

let answer: Double = 42 //ámbito global

func foo(n: Double, m: Double) -> Double {
    func bar(k: Double) -> Double {
        k + answer //k es ámbito local
    }// la función sólo evalua la expresión
    return bar(k: n) + bar(k: m) //la función regresa el valor
}
foo(n: 2, m: 1)
/**
 (2 + 42) + (1 + 42)
 87
 */

func foo(m: Double, n: Double) -> Double {
    func bar() -> Double {
        m + n
    }
    return pow(bar(), 2) + pow(bar(), 3) + pow(bar(), 4)
}
foo(m: 1, n: 1)
/**
 2^2 + 2^3 + 2^4
 2*2 + 2*2*2 + 2*2*2*2
 4 + 8 + 16
 28
 */

//Buenas prácticas en el diseño de funciones
/**
 Una función debería recibir por parámetros toda la data que necesita
 Las funciones deben recibir no buscar
 El buen sofftware debe ser reutilizable
 Evita usar variables globales, son fuente de inagotables problemas
 Una función que depende de variables globales es imposible de llevar a otro ámbito
 */

//Ámbitos globales
let area = 2 * Double.pi * 5
