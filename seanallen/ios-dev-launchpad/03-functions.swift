import UIKit

/** FUNCTIONS
 Lines of code that makes something especific and reuse in your code*/

// It is important that the name of our function suggest a verb not a noun, cause it do something
func printMonthName() {
    print("July")
}

// We need to call it in order to use it
printMonthName()

/** Parameters
 Reusable functions */

// To not print always July
func printMonth(name: String) {
    print(name)
}

printMonth(name: "August")
printMonth(name: "December")

/** Return Types */
func substract(a: Int, b: Int) -> Int {
    let sum = a - b
    return sum
}

let result = substract(a: 23, b: 9)
print(result)

/** Argument and Parameter Labels
 to: use it in call site
 secondNumber: used in the scope function*/

func add(firstNumber: Int, to secondNumber: Int) -> Int {
    return firstNumber + secondNumber
}

let result2 = add(firstNumber: 13, to: 8)
print(result2)

/** Variadic Functions
 Accept any numbers of params*/
func printWeeklyDays(days: String...) {
    print(days)
}

printWeeklyDays(days: "Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
