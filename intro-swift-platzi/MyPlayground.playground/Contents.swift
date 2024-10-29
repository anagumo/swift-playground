import UIKit

var greeting = "Let's experiment with code"

print("\(greeting), Ari")

// variables and constants
// constants has fixed values (optimization)
let maximumNumberOfLoginAttempts = 3
var currentLoginAttempt = 0

// innline vars, variables needs more memory if needs to update its value
var x = 0.1, y = 0.2, z = 0.3 // type inference

// type annotations
var welcomeMessage: String
welcomeMessage = "Hola, qué tal"

var green, blue, red: Double

// naming can contain any character including unicode
let π = 3.141592 // alphabet
let 進化 = "Evolución" // symbols
let 🍁 = "Otoño" // emojis
print(進化)

// string interpolation
print("The kanji 進化 means \(進化) in japanese")
print("a", "b", "c", separator: ", ", terminator: ".")

// comments
// this is a comment
/* this a multiline
comment */

// types
//int
let age = 35
let minValue = Int8.min
let maxValue = Int8.max
let min8Value = UInt8.min // (2X0)-1
let max8Value = UInt8.max // (2X8)-1
let min16Value = UInt16.min
let max16Value = UInt16.max
let min32Value = UInt32.min
let max32Value = UInt32.max
let min64Value = UInt64.min
let max64Value = UInt64.max

// UInt takes the value of the computer arch: 32 or 64
let correctAge: UInt8 = 35 // we don't need a lot space on memory

// floating point numbers: fractional component
// floats repesent a 32 bit point number, 6 digits
let f1: Float = 3.123456
//doubles represents a 64 bit point number, 15 digits
let d1 = 3.123456789012345

// type safety and type inference
// swift perfomrs type checks in complile time to avoid mix types
// swift inferences the type when you don't set it
let meaningOfLife = 42 // Int
let d2 = 3.1415 //Double
let op = 16 + 3.1415 //Double

// literal numbers
// (1*10)^2 + 3
let decimalIteger = 23
// 1*2^0 (every number ^0 is 1) + 1*2^1 + 1*2^2 + 0*2^3 + 1*2^4
let binaryInteger = 0b10111
let octalInteger = 0o27
let hexadecimalInteger = 0x17

// exponents
let decimalExponent = 1.25e2 // 1.25 * 10^2
let hexadecimalExponent = 0xC.3p0

//padded numbers
let paddedDecimal = 0001.23
let paddedDecimal2 = 1_000

// numeric type conversion
let a: UInt16 = 2_000
let b: UInt8 = 1
let sum = a + UInt16(b)

let c = 19.6 // Swift inferes a Double
let d = 3 // Swift inferes an Int
let oldProduct = 19.6 + 3 // type iference OK
let product = c * Double(d) // we need to cast

// type aliases: define a name for an existing type
typealias AudioSample = UInt16

// if you need to change to an UInt32 just modify the alias value
let minAudio = AudioSample.min

// booleans: logical values
let isUserLogged = true

if isUserLogged {
    print("User has a valid session")
} else {
    print("Authentication failed")
}

// tuples: store values of any type
let httpError = (400, "Page not found")
let (code, statusMessage) = httpError
let (justCode, _) = httpError
print("Result is \(justCode): \(statusMessage)")

let httpSuccess = (code: 200, message: "OK")
print("The code is \(httpSuccess.code)")

// optionals and nil: value or abscence of value
// in objective-c return nil were able just for objects
let song = "I need my girl"
let nilSong = Int(song) // cast fails so we get abscence of value
let optionalSong: String? = String(song) // this way we could be able to unwrap it

// force unwrapping
if optionalSong != nil {
    print("The song is called \(optionalSong!)")
} else {
    print("There is no song")
}

// optional binding: to avoid force values
if let optionalSong {
    print("The song is called \(optionalSong)")
} else {
    print("There is no song")
}

// implicit unwrap
print("The song is called \(optionalSong?.uppercased())")

// try catch: error handling during execution
enum SandwichError: Error {
    case missingIngredients([String])
    case outOfCleanDishes
}

func makeASandwich() throws {
    throw SandwichError.missingIngredients(["letuce", "mostaza"])
}

do {
    try makeASandwich()
} catch SandwichError.missingIngredients(let ingredients) {
    print("Buy these ingredients \(ingredients)")
} catch SandwichError.outOfCleanDishes {
    print("Wash dishes")
}

// assertions(debug) and preconditions(build)
