import UIKit

/** INHERITANCE
 Is the habilty of a parent class to inherit properties and functionality to a child one */

// The best way to understand this is with sets in maths
// I'll create a specific person called "Paucita" who is going to be part of the person group */

// Each person has different characteristics but they have more than one in common
// all they are persons with a name or they have the speak hability
class Person {
    let name: String
    let age: Int
    let nationality: String
    let jobTitle: String?
    
    init(name: String, age: Int, nationality: String, jobTitle: String?) {
        self.name = name
        self.age = age
        self.nationality = nationality
        self.jobTitle = jobTitle
    }
    
    func speakPresentation() {
        print("I'am \(name)")
    }
}

// So our child class is going to be a subclass of Person
// and is going to inherit all its properties and functionality but add particular ones
class Paucita: Person {
    var favoriteDevices: [String]?
    
    func printFavoriteDevices() {
        if let devices = favoriteDevices {
            print("My favorite devices are: \(devices)")
        } else {
            print("I don't have favorite devices yet")
        }
    }
    
    // And I could override the functionality of the parent class (object) and add my own too
    override func speakPresentation() {
        print("I'am \(name) and I love mobile devices")
    }
}

let paucita = Paucita(name: "Pau", age: 25, nationality: "Mexciana", jobTitle: "Biologa")
paucita.favoriteDevices = ["iPhone", "Xiaomi", "Nokia"]

paucita.speakPresentation()
paucita.printFavoriteDevices()
