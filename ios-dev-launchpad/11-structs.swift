import UIKit

/** STRUCTS
 An struct its a value type that has properties and functionality like a class
 - Are better in performance
 - Has memberwise initializers
 
 Value Types: Separated instances
 Refrence Types: Reference to the same instance */

struct Person {
    var name: String
    var age: Int
    var nationality: String
    var jobTitle: String?
}

var ari = Person(name: "Ari", age: 31, nationality: "Mexicana", jobTitle: "Software Engineer")
var sean = ari
sean.name = "Sean"

print("Instance 1: \(ari.name)")
print("Instance 2: \(sean.name)")

// Reference types
class Libro {
    var title: String
    var author: String
    var price: Double?
    
    init(title: String, author: String, price: Double) {
        self.title = title
        self.author = author
        self.price = price
    }
}

var swiftBook = Libro(title: "Swift Book", author: "Apple Inc.", price: .zero)
var arithmetic = swiftBook
arithmetic.title = "Aritmética"
arithmetic.author = "Baldor"
arithmetic.price = 355

print("Instance 1: \(swiftBook.title)")
print("Instance 2: \(arithmetic.title)")
