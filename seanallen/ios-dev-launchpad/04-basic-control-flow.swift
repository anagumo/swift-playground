import UIKit

/** BASIC CONTROL FLOW */
 
// IF: We use it to validate if a condition is true
let hourOfDay = 24

if hourOfDay >= 6 && hourOfDay < 12 {
    print("Good morning")
} else if hourOfDay >= 12 && hourOfDay < 20 {
    print("Good afternoon")
} else if hourOfDay >= 20 && hourOfDay <= 24  {
    print("Good night")
} else {
    print("You are a psyco")
}

// FOR loop
// We used to iterate over a collection
let planets = ["Mercurio", "Venus", "Tierra", "Marte", "Jupiter", "Saturno", "Urano", "Neptuno", "Plutón"]

for cake in planets where cake != "Plutón" {
    print(cake)
}

// Or make something any number of times
for number in 0...10 {
    print(number)
}

var randomInts: [Int] = []

for _ in 0...10 {
    let randomNumber = Int.random(in: 0...50)
    randomInts.append(randomNumber)
}

print(randomInts)
