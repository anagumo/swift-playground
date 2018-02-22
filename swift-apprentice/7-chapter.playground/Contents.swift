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
