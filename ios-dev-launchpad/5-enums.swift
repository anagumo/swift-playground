import UIKit

/** ENUMS
 There are a group of values that related them */

enum DailyMenu: String {
    case monday = "Crema de champiñón con nuggets"
    case tuesday = "Tostadas de tinga de pollo"
    case wednesday = "Filete de pescado con arroz blanco"
    case thursday = "Mole rojo con frijoles"
    case friday = "Torta de queso"
    
    var food: String {
        return self.rawValue
    }
}

func getFood(of day: DailyMenu) -> String {
    return day.food
}

getFood(of: .wednesday)

enum ArithmeticExpression {
    case addition(x: Double, y: Double)
    case substraction(x: Double, y: Double)
    case multiplication(x: Double, y: Double)
    case power(x: Double, y: Double)
    case squareroot(x: Double)
    
    var result: Double {
        switch self {
        case .addition(let x, let y):
            return x + y
        case .substraction(let x, let y):
            return x - y
        case .multiplication(let x, let y):
            return x * y
        case .power(let x, let y):
            return pow(x, y)
        case .squareroot(let number):
            return number.squareRoot()
        }
    }
}

func doMath(operation: ArithmeticExpression) -> Double {
    return operation.result
}

doMath(operation: .addition(x: 3, y: 7))
