//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// Challenges
// 1. Void closures
let voidClosure: () -> Void = {
    print("Swift Apprentice is a great book!")
}

func repeatTask(times: Int, task: () -> Void) {
    for _ in 0..<times {
        task()
    }
}
repeatTask(times: 10, task: voidClosure)

/**
 2. Closure sums
 @param lenght of values to sum
 @param series is a closure to generate a serie of values
 @param closure is the position of the value
 @return closure is the value of that position
 @return the sum of the values
 */
var squares = { a -> Int in
    a * a
}

func fibonacci(_ a: Int) -> Int {
    return a < 2 ? a: fibonacci(a - 1) + fibonacci(a - 2)
}

func mathSum(length: Int, series: (Int) -> Int) -> Int {
    var sum = 0
    for index in 1...length {
        sum += series(index)
    }
    return sum
}
mathSum(length: 10, series: squares) // It prints 385
mathSum(length: 10, series: fibonacci) // It prints 143

/**
 3. Functional Ratings
 */
let appRatings = [
    "Calendar Pro": [1, 5, 5, 4, 2, 1, 5, 4],
    "The Messenger": [5, 4, 2, 5, 4, 1, 1, 2],
    "Socialise": [2, 1, 2, 2, 1, 2, 4, 2]
]
var averageRatings: [String: Int] = [:]

for (app, ratings) in appRatings {
    averageRatings[app] = ratings.reduce(0) { result, rating -> Int in
        result + rating
    }
}
print(averageRatings) // It prints ["Socialise": 16, "The Messenger": 24, "Calendar Pro": 27]

var graterAverages = averageRatings.filter { averageRating -> Bool in
    averageRating.value > 3
    }.map { graterAverage -> String in
        graterAverage.key
}
print(graterAverages) // It prints ["Socialise", "The Messenger", "Calendar Pro"]
