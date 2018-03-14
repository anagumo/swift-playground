//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, Chapter 11"

// 1. Stored properties
struct Contact {
    var fullName: String
    let email: String
    var type = "Friend"
}

var ari = Contact(fullName: "Ariana Gotwski",
                  email: "a@gmail.com",
                  type: "Friend")

ari.type
ari.type = "Family"
ari.type

// 2. Computed properties
struct DeviceConvertion {
    // 3. Type propertie
    static var desc = "MyDevice" {
        // 4. Property observers
        didSet {
            if !desc.isEmpty {
                print("Has personalizado el nombre de tu dispositivo")
            }
        }
    }
    
    // 1. Stored properties
    var diagonal: Double
    
    // 2. Computed properties
    var pulgadas: Double {
        get {
            return diagonal > 0 ? diagonal / 2.4 : 0
        }
        set {
            diagonal = (newValue * 2.4).rounded()
        }
    }
}

var myMac = DeviceConvertion(diagonal: 64)
myMac.pulgadas
myMac.pulgadas = 13.3
myMac.diagonal

// 3. Typed properties
// 4. Property Observers
DeviceConvertion.desc = "My Mac"
let device = DeviceConvertion.desc

// 5. Lazy properties
struct Circle {
    lazy var pi = {
        return ((4.0 * atan(1.0 / 5.0)) - atan(1.0 / 239.0)) * 4.0
    }()
    var radius = 0.0
    var circumference: Double {
        mutating get {
            return pi * radius * 2
        }
    }
    init(radius: Double) {
        self.radius = radius
    }
}

var circle = Circle(radius: 18)
// Pi is waiting...
let circumference = circle.circumference

// Challenges
/**
 1. Rewrite the IceCream structure below to use default values and lazy initialization
 a. Use default values for the properties.
 b. Lazily initialize the ingredients array.
 */
struct IceCream {
    let name = "Lemon"
    lazy var ingredients = {
        return ["milk", "lemon", "chocolate"]
    }()
}

var lemonIceCream = IceCream()
lemonIceCream.name
lemonIceCream.ingredients

/**
 2. Rewrite the FuelTank structure below with property observer functionality and add the property to Car structure
 */
struct FuelTank {
    var lowFuel = false
    var level: Double {
        didSet {
            if level < 0 || level > 1 {
                print("The fuel level is out of the range")
            }
        }
    }
    
    var isLowFuel: Bool {
        get {
            return level < 0.1 ? true : false
        }
        set {
            (level < 0.1) ? (lowFuel = true) : (lowFuel = false)
        }
    }
    
    init(level: Double) {
        self.level = level
    }
}

struct Car {
    let make: String
    let color: String
    var fuelTank: FuelTank
}

var car = Car(make: "BMW", color: "Gray", fuelTank: FuelTank(level: 0.05))
car.fuelTank.isLowFuel // The level drops below 10%
car.fuelTank.level = 0.6
car.fuelTank.isLowFuel // The tank fills back up
car.fuelTank.level = 3
