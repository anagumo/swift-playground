import UIKit

/** TYPES */
/** Int */
let score: Int = 30_000 // We use underscore to make quantities more readable

/** Float, rounded at 5 decimal places */
let bookPrice: Float = 1900.50

/** Double, at least 15 decimal places */
let pi: Double = 3.1416

/** String, represents text */
let yourName = "Mitshua"

/** Bool, has only two posible values: true or false */
let isTeneeger = true

/**
 * There are tons of types on Swift
 * and we can create our own custom ones when we create clases, for example. */

/** TYPES FOUNDATIONS */
/** Type Safe
 Swift is a safety language because you cannot mix types, if you declare a variable as Int, it is not possible re assign a value with a different type */
var a: Double = 34
// a = "Pitágoras" -> Cannot assign value of type 'String' to type 'Int'

/** Type Inference
 This is a great feature of Swift because is not necessary difine the type of our variables when we create them */
var b = 18 // Swift compiler creates it as Int

/** Type Annotations
 Finally if you can be explicity about the type you save in your variables, you can add type annotations */
var hypotenuse: Int = 0

/** Remember, you cannot mix types */
// hypotenuse = (a * a + b * b).squareRoot() -> Cannot convert value of type 'Int' to expected argument type 'Double'
