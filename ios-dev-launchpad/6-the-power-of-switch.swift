import UIKit

/** Switch
 Compares a value with other posibilities of the same type */

enum ArithmeticExpression {
    case addition
    case substraction
    case multiplication
    case power
}

func doMath(with numbers: (a: Double, b: Double), operation: ArithmeticExpression) -> Double {
    switch operation {
    case .addition:
        return numbers.a + numbers.b
    case .substraction:
        return numbers.a - numbers.b
    case .multiplication:
        return numbers.a * numbers.b
    case .power:
        return pow(numbers.a, numbers.b)
    }
}

doMath(with: (2, 3), operation: .power)


/// Interval matching in an exaustive switch (default)
let age = 61

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
case let a where a >= 61:
    print("Elderly")
default:
    print("Unknown")
}


/// Tuples, Value Bindings and Where clause
let person = ("Matt", 0)

switch person {
case let (name, age) where age == 0 :
    print("\(name) it's a litte baby")
case (let name, 0...2):
    print("\(name) is an infant...")
case (_, 3...12):
    print("Child")
case (_, 13...19):
    print("Teenager")
case (_, 20...39):
    print("Adult")
case (_, 40...60):
    print("Middle age")
case let (_, age) where age >= 61:
    print("Elderly")
default:
    print("Unknown")
}


/// Compund Cases
