import UIKit
import Foundation

var str = "Hello, playground"
// Comments
// This is a comment
/* This is also
 a comment */

// Printing in the debug area
print("Ahoy, world!")

// Aritmethic operations
2 + 6
10 - 2
2 * 4
24 / 3
22.0 / 7.0

// Reminder operator
28 % 8

// Shift operations
1 << 3 // 01 << 1000 => :. 8 Division
32 >> 2 // 100000 >> 1000 => 8 :. Multiplication

// Math functions
sin(45 * Double.pi / 180)
(2.0).squareRoot()
max(5, 10)
min(-5, 10)

// Constants
let number: Int = 13
let pi: Double = 3.14159 // not change

// Variables
var bookPrice = 900
bookPrice = 1_100

// Increment & Decrement
var counter: Int = 2
counter += 1 // 3
counter -= 1 // 2
// ... but multiplying and dividing too
counter *= 2 // 4
counter /= 2 // 2

// Mini-exercises
// Variables & Constants
let myAge: Int = 29
var averageAge: Double = (Double(myAge) + 30) / 2
let testNumber = 13
// Reminder Operator
let evenOdd = testNumber % 2
// Aritmethic operations
var answer = 0
answer += 1 // 1
answer += 10 // 11
answer *= 10 // 11
// Shifting
answer << 3 // 1101110 => 1101110000 :. 512 + 256 + 64 + 32 + 16 = 880

// Challenges
// 1. Variable & Constant
let exercises = 9
var exercisesSolved = 0
exercisesSolved += 1

// 2. Modify to compile
var age: Int = 16 // Its a variable
print(age)
age = 30
print(age)
exercisesSolved += 1

// 3. Math expressions
let a: Int = 46
let b: Int = 10
let answer1: Int = (a * 100) + b
let answer2: Int = (a * 100) + (b * 100)
let answer3: Int = (a * 100) + (b / 10)
exercisesSolved += 1

// 4. Order operations
let order = (5 * 3) - ((4 / 2) * 2)
exercisesSolved += 1

// 5. Average
let x: Double = 13
let y: Double = 26
let average = (x + y) / 2
exercisesSolved += 1

// 6. Temperature
let fahrenheit: Double = 32
let celcius = (fahrenheit - 32) / 1.8 // 0
exercisesSolved += 1

// 7. Chessboard positions
let position = 13
let row = position / 8 // 1
let column = position % 8 // 5
exercisesSolved += 1

// 8. Radians
let degrees: Double = 13
let radians = (degrees / 180) * Double.pi // 0.226892...
exercisesSolved += 1

// 9. Distance
let x1: Double = 1
let x2: Double = 3
let y1: Double = 1
let y2: Double = 3
let dx: Double = x2 - x1
let dy: Double = y2 - y1
let distance = (pow(dx, 2) + pow(dy, 2)).squareRoot()
exercisesSolved += 1
