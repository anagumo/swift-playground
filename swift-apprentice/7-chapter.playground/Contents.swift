//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, Chapter 7"

// Challenges

// Arrays
// 1. Valid statements
let array1 = [Int]()
// let array2 = [] -> Missing type
let array3: [String] = []

let array4 = [1, 2, 3]
print(array4[0])
// print(array4[5]) -> Index out of range
array4[1...2]
// array4[0] = 4 -> Make it mutable
// array4.append(4) -> Make it mutable

var array5 = [1,2,3]
array5[0] = array5[1]
array5[0...1] = [4,5]
// array5[0] = "six" -> Diffrent types
// array5 += 6 -> Diffrent types
for item in array5 {
    print(item)
}

// 2. Removing once
let scores = [1,2,2,5,8,5,8,7,2]

func removingOnce(_ item: Int, from array: [Int]) -> [Int] {
    var mutableArray = array
    if array.contains(item) {
        if let index = mutableArray.index(of: item) {
            mutableArray.remove(at: index)
        }
    }
    return mutableArray
}
removingOnce(2, from: scores) // It prints [1, 2, 5, 8, 5, 8, 7, 2]

// 3. Removing All
// scores = [1,2,2,5,8,5,8,7,2]
func removing(_ item: Int, from array: [Int]) -> [Int] {
    var mutableArray = array
    for _ in array.enumerated() {
        if array.contains(item) {
            if let index = mutableArray.index(of: item) {
                mutableArray.remove(at: index)
            }
        }
    }
    return mutableArray
}
removing(2, from: scores) // It prints [1, 5, 8, 5, 8, 7]

// 4. Reversed
// scores = [1,2,2,5,8,5,8,7,2]
func reversed(_ array: [Int]) -> [Int]{
    var reversedArray: [Int] = []
    for index in stride(from: array.count - 1, through: 0, by: -1) {
        reversedArray.append(array[index])
    }
    return reversedArray
}
reversed(scores) // It prints [2, 7, 8, 5, 8, 5, 2, 2, 1]

// 5. Ramdon elements
// scores = [1,2,2,5,8,5,8,7,2]
func randomFromZero(to number: Int) -> Int {
    return Int(arc4random_uniform(UInt32(number)))
}

func randomized(_ array: [Int]) -> [Int] {
    var randomArray: [Int] = []
    for _ in array {
        randomArray.append(randomFromZero(to: array.count))
    }
    return randomArray
}
randomized(scores)

// 6. MinMax
// scores = [1,2,2,5,8,5,8,7,2]
func minMax(of numbers: [Int]) -> (min: Int, max: Int)? {
    var minMax = (min: numbers[0], max: numbers[0])
    for (_, number) in numbers.enumerated() {
        if number > minMax.max {
            minMax.max = number
        } else if number < minMax.min {
            minMax.min = number
        }
    }
    return minMax
}
minMax(of: scores) // It prints (min 1, max 8)

// Dictionaries
// 1. Valid statements
//let dict1: [Int, Int] = [:] -> Wrong syntaxis
//let dict2 = [:] -> Missing type
let dict3: [Int: Int] = [:]

// 2. Valid statements
let dict4 = ["One": 1, "Two": 2, "Three": 3]
//dict4[1] -> wrong value type
dict4["One"]
//dict4["Zero"] = 0 -> Cannot add a new pair to an inmutable dictionary
//dict4[0] = "Zero" -> wrong value type

// 3. Iterating throug dictionaries
var dict5 = ["NY": "New York", "CA": "California"]
dict5["NY"]
dict5["WA"] = "Washington"
dict5["CA"] = nil
dict5["MX"] = "Mexico"

func printLocations(of locations: [String: String]) {
    for (key, value) in locations {
        if value.count > 8 {
            print("\(key), \(value)")
        }
    }
}
printLocations(of: dict5) // It prints "WA, Washington"

// 4. Mergin dictionaries
let playlist1 = ["Chelsea Wolfe": "Hypnos", "Gorillaz": "Busted and Blue"]
var playlist2 = ["The National": "England", "Chelsea Wolfe": "Movie Screen"]
func merging(_ dict1: [String: String], with dict2: [String: String]) -> [String: String] {
    var playlist: [String: String] = [:]
    for (artist, song) in dict1 {
        playlist[artist] = song
    }
    for (artist, song) in dict2 {
        playlist[artist] = song
    }
    return playlist
}
merging(playlist1, with: playlist2) // It prints ["The National": "England", "Chelsea Wolfe": "Movie Screen", "Gorillaz": "Busted and Blue"]

// 5. Updating values
let text = "hello"
func occurrencesOfCharacters(in text: String) -> [Character: Int]{
    var ocurrences: [Character: Int] = [:]
    for char in text.lowercased() {
        if let times = ocurrences[char] {
            ocurrences.updateValue(times + 1, forKey: char)
        } else {
            ocurrences[char] = 1
        }
    }
    return ocurrences
}
occurrencesOfCharacters(in: text) // It prints ["e": 1, "o": 1, "l": 2, "h": 1]

// 6. Removing pairs
var nameTitleLookup: [String: String?] = ["Mary": "Engineer", "Patrick": "Intern", "Ray": "Hacker"]
nameTitleLookup.updateValue(nil, forKey: "Patrick")
nameTitleLookup["Ray"] = nil

nameTitleLookup // It prints ["Mary": {some "Engineer"}, "Patrick": nil]
