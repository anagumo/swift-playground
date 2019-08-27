import UIKit

// Variables
var str = "Hello, playground"

str = "Ahoy, playground" // Value changes

// Basic types - Type Safety
var myAge = 38
// myAge = "Treinta y ocho" // Types cannot be mixed
var price = 10_000 // Use separators for more readeble numbers

var poem = """
Mil pequeños peces blancos,
como si hirviera \
el color del agua
""" // Multiple strings

var area = 34.5 // Fraccional numbers, but different of floats
var isVisible = true // Only two values

// Combine variables to make them more useful
var myName = "Ariana"
print("My name is \(myName) and I'm \(myAge) years old")

// Constants
let pi = 3.1416 // They never change

// Type inference and type annotations
let record: String = "The Grime and the Glow by Chelsea Wolfe"
let songs: Int = 13
let duration: Double = 1.5
let isAvailable: Bool = true

