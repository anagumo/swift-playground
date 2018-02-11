//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, Chapter 4"

//Mini-exercices

//1. For-range
let range = 1...10
for i in range {
    let square = i * i
    print("\(square)")
}

//2. Foor-range
for i in range {
    let squareRoot = sqrt(Double(i))
    print("\(squareRoot)")
}

//3. For-where
var sum = 0
for row in 0..<8 where row % 2 == 1 {
    for column in 0..<8 {
        sum += row * column
    }
}
sum

//4. Switch-range
let age = 13
switch age {
case 0...2:
    print("Infant")
case 3...12:
    print("Child")
case 13...19:
    print("Teenager")
case 20...39:
    print("Adult")
case 40...60:
    print("Middle age")
case _ where age >= 61:
    print("Elderly")
default:
    print("Unknown")
}

//5. Switch-let
let person = ("Matt", 30)
switch person {
case (let name, 0...2):
    print("\(name) is an infant...")
case (let name, 3...12):
    print("\(name) is a child...")
case (let name, 13...19):
    print("\(name) is a teenager...")
case(let name, 20...39):
    print("\(name) is an adult...")
case (let name, 40...60):
    print("\(name) is middle age...")
case let (name, age) where age >= 61:
    print("\(name) is ederly...")
default:
    print("Unknown")
}

// Challenges

/*:
 1. In the following for loop, what will be the value of sum, and how many iterations will happen?
 6 Iterations, sum = 15
 */
sum = 0
for i in 0...5 {
    sum += i
}
sum

/*:
 2. In the while loop below, how many instances of “a” will there be in aLotOfAs? Hint: aLotOfAs.count tells you how many characters are in the string aLotOfAs.
 Ten instances
 */
var aLotOfAs = ""
while aLotOfAs.count < 10 {
    aLotOfAs += "a"
}
aLotOfAs

/*:
 3: Print a countdown from 10 to 0. (Note: do not use the reversed() method, which will be introduced later.)
 */
var countdown = 10
while countdown >= 0 {
    print(countdown)
    countdown -= 1
}

/*:
 4. Print 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1.0. (Note: do not use the stride(from:by:to:) function, which will be introduced later.)
 */
var doubleSum = 0.0
for _ in 1...10 {
    doubleSum += 0.1
    print(doubleSum)
}
