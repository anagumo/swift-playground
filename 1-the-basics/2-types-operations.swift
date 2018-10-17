import UIKit

var str = "Hello, playground"
/* Numbers */
// Type conversion
var decimal: Double = 7.5
var integer = Int(decimal)

// Type inference
let typeInferredInt = 42 // Option key = Int
let typeInferredDouble = 3.1415 // Option key = Double
let wantADouble = 3 as Double

// Mini-exercises
// 1. Type inference
let age1 = 42 // Option key = Int
let age2 = 21 // Option key = Int

// 2. Wrong type
let avg1 = (age1 + age2) / 2 // Option key = Int

// 3. Certain type
let avg2 = (Double(age1) + Double(age2)) / 2 // Option key = Double

/* Strings */
// Character set -> Unicode -> Code Point
// Character data type
let characterB: Character = "B"
let characterBee: Character = "🐝"

// String data type for multiple characters
let stringBee: String = "Bee"

// Concatenation
var message = "We have a problem, "
let name = "Matt"
message += name
// Concatenating a character
let exclamationMark = "!"
message += String(exclamationMark)

// Interpolation
message = "\(name), we have a problem!"
// Using other types
let mattAge = 13
let teenager = "Matt is \(mattAge) years old"

// Multi-line strings
let haiku = """
    Mil pequeños peces blancos
    Como si hirviera
    El color del agua
    """

// Mini-exercises
// 1. Strings
let firstName: String = "Ariana"
let lastName: String = "Nagumo"

// 2. Concatenation
let fullName = firstName + " " + lastName

// 3. Interpolation
let myDetails = "Hello, my name is \(fullName)"

/* Tuples */
let coordinates: (Int, Int) = (2, 7)
let coordinatesMixed: (Double, Int) = (3.1415, 2)
// Accessing data
let x1 = coordinates.0
let y1 = coordinates.1
// Naming data
let coordinatesNamed: (x: Int, y: Int) = (x: 1, y: 2)
let x2 = coordinatesNamed.x
let y2 = coordinatesNamed.y
// Multiple parts
let coordinates3D = (x: 3, y: 5, z: 7)
let (x3, y3, z3) = coordinates3D
// Ignoring parts
let (x4, y4, _) = coordinates3D
print(x4)

// Mini-exercise
// Playing with tuples
// let date: (Int, Int, Int, Double) = (10, 16, 2018, 30)
var date = (month: 10, day: 16, year: 2018, averageTemperature: 30)
let (_, day, _, averageTemperature) = date
date.averageTemperature = 22
print("Today October \(day), the temperature is \(date.averageTemperature)ºC")

// Challenges
// 1. Unamed Tuple
let unamedCoordinates = (2, 3)

// 2. Named Tuple
let namedCoordinates = (row: 3, column: 2)

// 3. Character and String types
// let character: Character = "Dog" // Wrong
let character: Character = "🐶" // Valid
let string: String = "Dog" // Valid
let stringChallenge: String = "🐶" // Valid

// 4. Accessing data in tuples
let tuple = (day: 15, month: 8, year: 2015)
let dayChallenge = tuple.day // tuple.Day is wrong

// 5. Concatenation
var nameChallenge = "Matt" // Needs to be mutable
nameChallenge += " Galloway"

// 6. Type inference in tuples
let tupleChallenge = (100, 1.5, 10)
let value = tupleChallenge.1 // Option key = Double

// 7. Accesing data in tuples
let tupleChallenge2 = (day: 15, month: 8, year: 2015)
let month = tupleChallenge2.month // month = 8

// 8. Interpolation
let number = 10
let multiplier = 5
let summary = "\(number) multiplied by \(multiplier) equals \(number * multiplier)"

// 9. Unsigned types
let a = 4
let b: Int32 = 100
let c: UInt8 = 12
let operation = a + Int(b) - Int(c)

// 10. Difference between Double.pi and Float.pi
let difference = Double.pi - Double(Float.pi)
