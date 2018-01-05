//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, Chapter 2"

// Mini-exercises

// 1. Type inference
var age1 = 42
var age2 = 21

// 2-3. Mixed Types
var avg1 = (Double(age1) + Double(age2)) / 2

// 4. Strings
let firstName: String = "Ariana"
let lastName: String = "Gotwski"
let fullName: String = firstName + " " + lastName
let myDetails: String = "Hi! my name is \(fullName)"

// 5. Tuples
var date: (Int, Int, Int, Double) = (month: 6, day: 1, year: 2018, averageTemperature: 38)
let (_, day, _, temperature) = date

// Challenges

// 1.
let coordinates = (2,1)

// 2.
let namedCoordinate = (row: 1, column: 2)

// 3.
//let character: Character = "Dog"
let character: Character = "🐶"
let string: String = "Dog"
//let string: String = "🐶"

// 4.
let tuple = (day: 15, month: 8, year: 2015)
let day2 = tuple.day

// 5.
var name = "Matt"
name += " Galloway"

// 6.
let tuple2 = (100, 1.5, 10)
let value = tuple2.1

// 7.
let tuple3 = (day: 15, month: 8, year: 2015)
let month = tuple3.month

// 8.
let number = 10
let multiplier = 5
let summary = "\(number) multiplied by \(multiplier) equals \(number * multiplier)"

// 9.
let a = 4
let b: Int32 = 100
let c: UInt8 = 12
// let sum = (a + b) - c -> Different types!

// 10. The diference between a Double and a Float type is the precision
