//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, Chapter 12"

// Challenges
/**
 1. Write a method that can change an instance’s area by a growth factor. For example if you call circle.grow(byFactor: 3), the area of the instance will triple.
 */
struct Circle {
    
    var radius = 0.0
    
    var area: Double {
        get {
            return .pi * radius * radius
        }
        set {
            area = newValue
        }
    }
    
    init(radius: Double) {
        self.radius = radius
    }
    
    mutating func grow(byFactor number: Double) {
        area *= number
    }
}

var circle = Circle(radius: 8.3)
circle.area
circle.grow(byFactor: 2)
circle.area
