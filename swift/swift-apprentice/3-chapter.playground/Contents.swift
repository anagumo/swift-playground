//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, Chapter 3"

//Mini-exercices

//1. Boolean logic
let myAge = 24
let isTeenager = (myAge >= 13 && myAge <= 19)
let theirAge = 30
let bothTeenagers = (myAge >= 13 && myAge <= 19) && (theirAge >= 13 && theirAge <= 19)

//2. String equality
let reader = "Ariana"
let author = "Matt Galloway"
let authorIsReader = reader == author
let readerBeforeAuthor = reader < author

//3. If
if isTeenager {
    print("Teenager")
} else {
    print("Not a teenager")
}

//4. Ternary conditional operator
let answer = isTeenager ? "Teenager" : "Not a teenager"

//5. While loop
var counter = 0

while counter < 10 {
    print(counter)
    counter += 1
}

//6. Repeat while loop
var anotherCounter = 0
var roll = 0

repeat {
    roll = Int(arc4random_uniform(6))
    anotherCounter += 1
} while anotherCounter < 10

print("After \(anotherCounter) rolls, roll is \(roll)")
