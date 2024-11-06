import UIKit

//Laboratorio de funciones básicas
/**
 ¿Qué tiene que devolver? Es decir, ¿qué tengo que construir?
 ¿Qué recibe como parámetros? Es decir, ¿qué materias primas tengo?
 */

// ámbito global
let pi = 3.14159

func areaCircle(radius: Double) -> Double {
    """
    Calcula el área de un círculo a partir de su radio
    No especifica si el radio es un entero unsigned
    """
    let pi = 3.14159
    return pi * pow(radius, 2)
}
//area(radius: 4) ¡primera refactorización!
areaCircle(radius: 4)

func volume(radius: Double) -> Double {
    """
    Calcula el volumen de una esfera a partir de su radio
    No especifica si el radio es un entero unsigned
    DRY: Crearé una variable pi global para reutilizar su valor
    """
    return 4/3 * pi * pow(radius, 3)
}
volume(radius: 10)

func iva(price: Double) -> Double {
    /**
     Calcula el iva a partir de un precio
     No especifica la moneda, lo tomaremos como dólares
     El iva será de un 20% sobre la cantidad
     */
    let iva = price * 0.20
    return price + iva
}

enum TempError: Error {
    case invalid
}

func temp(frequency: Double) throws -> Double {
    /**
     Calcula la temperatura con base en la frecuencia de los grillos
     No especifica en qué grados hay que hacer la conversión
     */
    let temp = 10 + (frequency - 40) / 7
    guard temp >= 0 else {
        throw TempError.invalid
    }
    return temp
}
try temp(frequency: 50)
/**
 Playground execution terminated: An error was thrown and was not caught:
 __lldb_expr_43.TemperaturaError.invalid
 */

func fahrenheitToCelsius(fahrenheit: Double) -> Double {
    /**
     Cobvierte de grados fahrenheit a celsius
     No especifica si recibe grados bajo cero
     */
    5/9 * (fahrenheit - 32)
}

func celsiusToFahrenheit(celsius: Double) -> Double {
    /**
     Cobvierte de grados celsius a fahrenheit
     No especifica si recibe grados bajo cero
     */
    9/5 * celsius + 32
}
fahrenheitToCelsius(fahrenheit: celsiusToFahrenheit(celsius: 20))
//en python no da 27
fahrenheitToCelsius(fahrenheit: celsiusToFahrenheit(celsius: 27))

func rectangleArea(base: Double, height: Double) -> Double {
    /**
     Calcula el área de un rectangulo
     */
    base * height
}
rectangleArea(base: 2, height: 7)

func squareArea(side: Double) -> Double {
    /**
     Calcula el area de un cuadrado
     Usa el pilar DRY de la ciberkinesis para reutilizar lo que ya tienes
     */
    rectangleArea(base: side, height: side)
}
squareArea(side: 8)

func toSeconds(hours: Double, minutes: Double, seconds: Double) -> Double {
    /**
     Calcula los segundos de una fecha en formato h:m:s
     No especifica si recibe número negativos, por lógica no debería :P
     */
    let hoursToSeconds = hours * pow(60, 2)
    let minutesToSeconds = minutes * 60
    return hoursToSeconds + minutesToSeconds + seconds
}

toSeconds(hours: 1, minutes: 30, seconds: 30)

func rectangleVolume(l1: Double, l2: Double, l3: Double) -> Double {
    /**
     Clacula el vólumen de un prisma rectangular
     Usa el pilar DRY de la ciberkinesis para reutilizar lo que ya tienes
     */
    rectangleArea(base: l1, height: l2) * l3
}
rectangleVolume(l1: 2, l2: 4, l3: 6)
