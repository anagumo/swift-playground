import UIKit

/** CLASSES
 A class is basically an object that has properties and methods to add functionality to it */

// How to create a class
class Person {
    var name: String?
    var age: Int?
    var nationality: String?
    var jobTitle: String?
    
/**
 An Initializer its a constructor, it add the posibility to create a class with all its properties or just some
 Self means the class it self, we use it to asign the values provide them in the constructor to each class property
 */
    
/** We could use an initializer with no properties to create an empty Person object */
    init() {}
    
/** Or request all the properties values to asign them to the class */
    init(name: String, age: Int, nationality: String, jobTitle: String) {
        self.name = name
        self.age = age
        self.nationality = nationality
        self.jobTitle = jobTitle
    }
    
/** Just in case a Person hasn't an job or is a teeneger we could add a constructor with no jobTitle property */
    init(name: String, age: Int, nationality: String) {
        self.name = name
        self.age = age
        self.nationality = nationality
    }
    
    func presentation() -> String {
        return "I'am \(name) and I'am \(age) years old"
    }
    
    func isAnAdult() -> Bool {
        if let age = age {
            return age > 18 && age < 110
        } else {
            return false
        }
    }
}

// Let's create humans
let unknownPerson = Person()
unknownPerson.name // nil
unknownPerson.presentation()

let paucita = Person(name: "Paucita", age: 24, nationality: "Mexicana", jobTitle: "Biology")
paucita.jobTitle // Biology

let mateo = Person(name: "Mateo", age: 2, nationality: "Mexicana")
mateo.age // 2
mateo.isAnAdult() // Mateo is a child
