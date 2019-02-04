import UIKit

// 1. Arrays - collections of values that can be stored as a single value, ordered
var friuts = ["Apple", "Orange", "Pineapple"]

// Type annotations for arrays
var serie: [Int] = [1, 2, 3, 4, 5]

// 2. Sets - collections, unordered and unique values
var primeNumbers = Set([2, 3, 5, 7])
// This will create just a set with two items
var colors: Set<String> = ["Purple", "Red", "Purple"]

// 3. Tuples - Collections of several values, can't remove items, can't change the type
var date = (year: 1990, month: 10, day: 13)
var person = (name: "Mateo", age: 3)

// Access to a tuple value by its position (from 0) or by the name of each value
person.name // => Mateo
person.1 // => 3

// 4. Dictionaries - Key-Values pair, access them by key identifiers
var credits: [String: String] = ["Main Actor": "Yalitza Aparicio", "Director": "Alfonso Cuarón", "Soundtrack": "Leo Dan"]

credits["Main Actor", default: "Unknown"] // => Yalitza Aparicio

// You can add a default key if the one used doesn't exist

// 5. Empty collections
var books = [String: String]()
var months = Set<String>()
var scores = [Int]()

// 6. Enumerations - Group of related values, an easy way to work with reused strings
enum Weekend {
    case saturday
    case sunday
}

var day = Weekend.sunday

// 7. Asociated values - Let's us add aditional information to enums
enum Weekdays {
    case monday(activity: String)
    case friday(activity: String)
}

let activity = Weekdays.monday(activity: "Work starts")

// 8. Raw Values - Asign values to enums
enum Numbers: Int {
    case one = 1
    case two
    case three
    case four
}

let first = Numbers(rawValue: 4)
