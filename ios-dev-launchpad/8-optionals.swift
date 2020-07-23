import UIKit

/** OPTIONALS
 A variable could have a value or not */
let numbers = [23, 89, 13, 21, 3, 54, 17]
let emptyList: [Int] = []

// The max function could give us or not a number, it depends on the array lenght
numbers.max()

// Optional binding
if let number = numbers.max() {
    print("\(number) is the greatest")
} else {
    print("Add some numbers to evaluate them")
}

// Coalesing Operator
let number = numbers.max() ?? .zero

// Guard statement
func getMax() {
    guard let number = numbers.max() else { return }
    print("\(number) is the greatest")
}
getMax()

// Force unwrap
//emptyList.max()! -> Fatal error: Unexpectedly found nil while unwrapping an Optional value
