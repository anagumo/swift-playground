import UIKit

/* Tuples groups values of any type*/
let mailbox: (name: String, number: Int) = ("Keepcoding", 10)
mailbox.name
mailbox.number

/* Enums are a group of posible values */
enum LetterType {
    case love
    case bussiness
    case family
    case friends(country: String)
}
let letter: LetterType = .friends(country: "Argentina")

/*  Control sentence to unwrap enumerations */
if case .bussiness = letter {
    print("It's a bussines letter")
} else {
    print("Isn't from work ")
}

// more clarity in the code
switch letter {
case .love, .family:
    print("It's a family letter")
case .bussiness:
    print("It's a bussines letter")
case let .friends(country):
    print("It's a friends letter from \(country)")
}

/* Optionals has or not a value, if a variable is not optional it cannot be niñ */
let recentLetter: LetterType? = nil
var letters: [LetterType]? = [.love, .bussiness, .family]

// unwrap values safety
if let recentLetter {
    print("This \(recentLetter) letter has text")
} else {
    print("There is no text inside the letter")
}

if let lettersCount = letters?.count {
    print("There are \(lettersCount) letters into the mailbox")
} else {
    print("There are not letters into the mailbox")
}

// unwrap values and stop the flow
letters = nil
func countLetters() {
    guard let lettersCount =  letters?.count else {
        print("There are not letters into the mailbox")
        return
    }
    print("There are \(lettersCount) letters into the mailbox")
}
countLetters()

/* Bucles */
var secretLetters: [LetterType] = [.love, .bussiness, .family]

for (number, secretLetter) in secretLetters.enumerated() {
    print("\(secretLetter) letter is the number \(number) into the mailbox")
}

var letterCount = 1
repeat {
    print("repeating block")
    letterCount += 1
} while letterCount < 5

/* class and structs */
/*
 class inheritance, properties and functionality
 manual constructors
 reference type, its an space of memory

 structs creates automatically constructors
 value type, its not a pointer its an inmutable copy
 Apple reccommend create models using struct
 */

class Label {
    let name: String // constants must have an initial value
    var website: String
    var artists: [String]?
    
    init(name: String, website: String) {
        self.name = name
        self.website = website
    }
    
    convenience init(name: String, website: String, artists: [String]) {
        self.init(name: name, website: website)
        self.artists = artists
    }
}

let label = Label(name: "Secret Songs",
                            website: "https://shhsecretsongs.com/")
label.name
label.website

var label2 = Label(name: "Sargent House",
                             website: "https://sargenthouse.com/",
                             artists: ["Chelsea Wolfe", "How to dress well"])
label2.name
label2.website
label2.artists?.append("Russian Circles")
label2.artists

let label3 = label2
label3.website = "https://www.discogs.com/es/label/12148-Southern-Records?page=1"
// both point to the same space of memory
label2.website
label3.website

struct Artist {
    var name: String
    var genre: String
}

let artist = Artist(name: "Chelsea Wolfe", genre: "Folk")
artist.name
artist.genre
let artist2 = Artist(name: "How to dress well", genre: "")
