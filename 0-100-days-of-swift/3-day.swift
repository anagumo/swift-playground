import UIKit

/*
 Arithmetic Operators
 */
let a = 13
let b = 7

let sum = a + b
let difference = a - b
let multiply = a * b
let division = a / b
let reminder = a % b

/*
 Operator Overloading
 The operator does depend on what are the values
 Remember Swift is Type-Safe so you won't mix types
 */
let one = 1
let two = 1 + 1

let lastname = "Lovelace"
let name = "Ada " + lastname

let sideA = ["Song 1", "Song 2"]
let sideB = ["Song 3", "Song 4", "Song 5"]
let lp = sideA + sideB

// Tweet this
// Look for JS reference on Twitter

/*
 Compound Assignament Operators
 Combine arithmetic operators with an asignament at the end to assing the result back
 */
var anotherDifference = 17
anotherDifference -= 7

var anotherName = "Charles "
anotherName += "Babbage"

/*
 Comparison Operators
 These operators works with strings in alphabethical order
 */
let primeOne = 3
let primeTwo = 17

primeOne == primeTwo
primeOne != primeTwo
primeOne > primeTwo
primeOne <= primeTwo

name > anotherName

/*
 Conditions
 */
if primeOne > primeTwo {
    print("\(primeOne) es mayor que \(primeTwo)")
} else {
    print("\(primeOne) es menor que \(primeTwo)")
}

/*
 Combaining Conditions
 Using AND OR special operators
 */
let teenager = 13
let adult = 22

if teenager > 18 && adult > 18 {
    print("Son mayores de edad")
}

if teenager > 18 || adult > 18 {
    print("Al menos hay un adulto")
}

/*
 The Ternary Operator
 The frist value evaluates a condition and retur True on the second one or False on the Third.
 */
print(a > b ? "a es mayor que b" : "a es menor que b")

/*
 Switch Statements
 * Fallthrough
 */
let animal = "dog"

switch animal {
case "cat":
    print("Miauuu")
case "ship":
    print("Beee")
case "chicken":
    print("Kikiriki")
case "dog":
    print("Guau")
default:
    print("You're gonna hear me roar!")
}

/*
 Range Operators
 ..< excludes the final value while ... includes it
 */
let score = 5

switch score {
case 0..<6:
    "Reprobaste"
case 6...7:
    "Intentalo nuevamente"
default:
    "Aprobaste"
}
