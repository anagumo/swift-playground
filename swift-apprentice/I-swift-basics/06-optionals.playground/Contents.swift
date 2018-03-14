//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, Chapter 6"

// Challenges

// 1. Optionals
var name: String? = "Ray"
// var age: Int = nil // You must initialize as Optional if its nil
let distance: Float = 26.7
var middleName: String? = nil

// 2. Optional binding
func divideIfWhole(_ value: Int, by divisor: Int) -> Int? {
    if value % divisor == 0 {
        return value / divisor
    }
    return nil
}

if let number = divideIfWhole(10, by: 5) {
    print("Yep, it divides \(number) times")
} else {
    print("Not divisible :[")
}

// 3. Nil coalescing
let number = divideIfWhole(10, by: 3) ?? 0
print("It divides \(number) times")

// 4. Nested Optionals
let weirdNumber: Int??? = 10

// Force unwrap
print(weirdNumber!!!)

// Optional binding using if let
if let weirdNumber = weirdNumber,
    let weirdNumber2 = weirdNumber,
    let weirdNumber3 = weirdNumber2 {
    print(weirdNumber3)
}

// Guard
func printNumber(_ number: Int???) {
    guard let number = number,
        let number2 = number,
        let number3 = number2 else {
        return
    }
    print(number3)
}

printNumber(nil)
