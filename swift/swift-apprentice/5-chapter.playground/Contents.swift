//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, Chapter 5"

// Mini-exercices

/*:
 Write a function named `printFullName` that takes two strings called `firstName` and `lastName`.  The function should print out the full name defined as `firstName` + " " + `lastName`. Use it to print out your own full name.
*/

func printFullName(firstname: String, lastName: String) {
    print("\(firstname) \(lastName)")
}

printFullName(firstname: "Ariana", lastName: "Gotwski")

/*:
 Change the declaration of `printFullName` to have no external name for either parameter.
 */

func printFullName2(_ firstname: String, _ lastName: String) {
    print("\(firstname) \(lastName)")
}
printFullName2("Ariana", "Gotwski")

/*:
 Write a function named `calculateFullName` that returns the full name as a string. Use it to store your own full name in a constant.
 */

func calculateFullName(firstName: String, lastName: String) -> String {
    return "\(firstName) \(lastName)"
}
let fullName = calculateFullName(firstName: "Ariana", lastName: "Gotwski")
fullName

/*:
 Change `calculateFullName` to return a tuple containing both the full name and the length of the name. You can find a string’s length by using the following syntax: `string.characters.count`. Use this function to determine the length of your own full name.
 */

func calculateFullName2(firstName: String, lastName: String) -> (fullName: String, fullNameLength: Int) {
    let fullName = "\(firstName) \(lastName)"
    return (fullName, fullName.count)
}
let (name, length) = calculateFullName2(firstName: "Ariana", lastName: "Gotwski")
name
length

// Challenges

// 1. Looping with stride functions
for index in stride(from: 10.0, through: 9.0, by: -0.1) {
    print(index)
}

// 2. It's prime time!
func isNumberDivisible(_ number: Int, by divisor: Int) -> Bool {
    return number % divisor == 0 ? true : false
}

func isPrime(_ number: Int) -> Bool {
    if (number <= 1) {
        return false
    } else {
        for index in stride(from: 2, to: number, by: 1) {
            if (isNumberDivisible(number, by: index)) {
                return false
            }
        }
        return true
    }
}

isPrime(-7)

// 3. Recursive functions
// 1 2 3 4 5 6 7
// 1 1 2 3 5 8 13

// 4. High order functions
func add(_ a: Int, _ b: Int) -> Int {
    return a + b
}

func calculator(operation: (_ a: Int, _ b: Int) -> Int, a: Int, b: Int) -> Int {
    return operation(a, b)
}

calculator(operation: add, a: 5, b: 6)
