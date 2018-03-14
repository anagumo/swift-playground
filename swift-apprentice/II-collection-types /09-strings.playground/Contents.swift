//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, Chapter 9"

let cafeCombining = "cafe\u{0301}"

let firstIndex = cafeCombining.startIndex
let firstChar = cafeCombining[firstIndex]

let lastIndex = cafeCombining.index(before: cafeCombining.endIndex)
let lastChar = cafeCombining[lastIndex]

let fourthIndex = cafeCombining.index(cafeCombining.startIndex, offsetBy: 3)
let fourthChar = cafeCombining[fourthIndex]

fourthChar.unicodeScalars.count
fourthChar.unicodeScalars.forEach { codePoint in
    print(codePoint.value) // It prints 101, 769 for é
}

// Challenges
/*
 1. Write a function which take a string and prints out the count of each character in the string.
 For bonus points, print it as a nice histogram. You could use # characters to draw the bars.
 */
let firstString = "Co\u{0301}mo esta\u{0301}s, amigo 🤓"

func countingUnicodeChars(of text: String) {
    text.forEach { char in
        char == " " ? print("#") : print(char.unicodeScalars.count)
    }
}

countingUnicodeChars(of: firstString)

/*
 2. Write a function which tells you how many words there are in a string.
 Do it without splitting the string but rather iterating through the string yourself.
 */
// TODO: Improve it
func countingWords(of text: String) -> Int {
    var words = 1
    text.forEach{ char in
        if char == " " {
            words += 1
        }
    }
    return words
}

countingWords(of: firstString)

/*
 3. Write a function which takes a string which looks like "Galloway, Matt" and returns one which looks like "Matt Galloway";
 i.e. the string goes from "<LAST_NAME>, <FIRST_NAME>" to "<FIRST_NAME> <LAST_NAME>
 */
let reverseString = "Gotwski, Ariana"

func printNormalFullName(of reverseName: String) -> String {
    let spaceIndex = reverseName.index(of: " ")!
    let comaIndex = reverseName.index(of: ",")!
    let firstName = reverseName[reverseName.index(after: spaceIndex)...]
    let lastName = reverseName[..<comaIndex]
    
    return String("\(firstName) \(lastName)")
}

printNormalFullName(of: reverseString)
