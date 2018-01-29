//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, Chapter 3"

//Mini-exercices

//1. Boolean logic
let myAge = 24
let isTeenager = (myAge >= 13 && myAge <= 19)
let theirAge = 30
let bothTeenagers = (myAge >= 13 && myAge <= 19) && (theirAge >= 13 && theirAge <= 19)

//2. String equality
let reader = "Ariana"
let author = "Matt Galloway"
let authorIsReader = reader == author
let readerBeforeAuthor = reader < author

//3. If
if isTeenager {
    print("Teenager")
} else {
    print("Not a teenager")
}

//4. Ternary conditional operator
let answer = isTeenager ? "Teenager" : "Not a teenager"

//5. While loop
var counter = 0

while counter < 10 {
    print(counter)
    counter += 1
}

//6. Repeat while loop
var anotherCounter = 0
var roll = 0

repeat {
    roll = Int(arc4random_uniform(6))
    anotherCounter += 1
} while anotherCounter < 10

print("After \(anotherCounter) rolls, roll is \(roll)")

// Challenges

// 1. Wrong Scope
let firstName = "Matt"

if firstName == "Matt" {
    let lastName = "Galloway"
} else if firstName == "Ray" {
    let lastName = "Wenderlich"
}
// let fullName = firstName + " " + lastName

// 2. Invalid redeclaration
// let answer = true && true
// let answer = false || false
// let answer = (true && 1 != 2) || (4 > 3 && 100 < 1)
// let answer = ((10 / 2) > 3) && ((10 % 2) == 0)

// 3. Breaking out of a loop
let number = 1024

// 4. Repeat-while loops
var j = 0

repeat {
    print(pow(2, j))
    j += 1
} while j < 10

// 4. Fibonnaci
let nFibonacci = 13
var fibonacciOne = 0
var fibonacciTwo = 1
var nextFibonacci = 0
var fibonacciCounter = 2

while fibonacciCounter < nFibonacci {
    nextFibonacci = fibonacciOne + fibonacciTwo
    fibonacciOne = fibonacciTwo
    fibonacciTwo = nextFibonacci
    fibonacciCounter += 1
}

print("The \(nFibonacci)th fibonacci number is \(nextFibonacci)")

// 5. Factorial
let nNumber = 5
var numberFactorial = 1
var factorialCounter = 1

while factorialCounter <= nNumber {
    numberFactorial *= factorialCounter
    factorialCounter += 1
}

print("Factorial of \(nNumber) number is \(numberFactorial)")
