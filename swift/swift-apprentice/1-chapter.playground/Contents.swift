//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, Chapter 1"

// Shift operations
 1 << 3
32 >> 2

// 32 16 8 4 2 1             8 4 2 1
// 1  0  0 0 0 0  >> 0 0   = 1 0 0 0
//             1  << 0 0 0 = 1 0 0 0

// 📝 Mini - exercises

let myAge : Int = 24

var averageAge: Double = Double(myAge)
averageAge = (Double(myAge) + 30) / 2

let testNumber = 13
let evenOdd = testNumber % 2

var answer = 0
answer += 1
answer += 10
answer *= 10
answer >> 3

//📝 Challenges

let exercises = 9
var exercisesSolved = 0

//🔓 1-Variables
var age : Int = 16
print(age)
age = 30
print(30)

exercisesSolved += 1

//🔒 2-Constants
let a: Int = 46
let b: Int = 10

exercisesSolved += 1

//🔎 3-Unknown
let answer1: Int = (a * 100) + b
let answer2: Int = (a * 100) + (b * 100)
let answer3: Int = (a * 100) + (b / 10)

exercisesSolved += 1

//🔢 4-Order Operations
(5 * (3 - 4)) / (2 * 2)

exercisesSolved += 1

//➗ 5-Average
let a1: Double = 35
let b1: Double = 8
let average = (a1 + b1) / 2

exercisesSolved += 1

//🌤 6-Metic Conversions
let celsius: Double = 39
let fahrenheit: Double = 102.2
let toFahrenheit = (celsius * 1.8) + 32
let toCelsius = (fahrenheit - 32) / 1.8

exercisesSolved += 1

//♜ 7-Chessboard
let position = 9
var i = position
var j = 0

while i > 7 {
    i -= 8
    j += 1
}

let column = i
let row = j

exercisesSolved += 1

//𝝅 8-Radians
let degrees: Double = 180
let radians = (degrees * 2) / 360

exercisesSolved += 1

//⟷ 9-Distance
let x1: Double = -3
let y1: Double = 3
let x2: Double = 3
let y2: Double = -3
let distance = (pow((x2 - x1), 2) + pow((y2 - y1), 2)).squareRoot()

exercisesSolved += 1
