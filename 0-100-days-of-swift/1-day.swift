import UIKit

// 1. Variables
var greeting = "Hello, world!"
greeting = "Goodbye, cruel world!"

// greeting = 3 error: cannot assign value of type 'Int' to type 'String'

// 2. Type safe language
var name = "Ariana"
var age = 29
var bookPrice = 1_000

// Combine types with string interpolation

// 3. Multi-line strings
var haiku = """
Mil pequeños peces blancos
Como si hirviera \
El color del agua
"""

// Include \ to format

/* 4. Doubles and Booleans
 Double by default and precision of a Double compared with Float
 */
var area = 3.5
var isFebruary = true

// 6. String interpolation - place variables inside a string
var numberOfDays = 100
var marathon = "This Swift marathon lasts \(numberOfDays) days"

// 7. Constants - Variables can vary but constants noooo
let pi = 3.14159

// 8. Type Annotations - Be explicit about the type of your data
let year: Int = 1989
let lastName: String = "Nagumo"
