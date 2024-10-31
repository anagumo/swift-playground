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

/* Optionals has or not a value, if a variable is not optional it cannot be nil */
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

/* Class and structs */
/*
 class inheritance, properties and functionality
 manual constructors
 reference type, its an space of memory *

 structs creates automatically constructors *
 value type, its not a pointer its an inmutable copy *
 Apple reccommend create models using struct
 */

class MusicDDBB {
    let name: String // constants must have an initial value
    var website: String
    var artists: [Artist]?
    var albumes: Int?
    
    init(name: String, website: String) {
        self.name = name
        self.website = website
    }
    
    convenience init(name: String, website: String, artists: [Artist], albumes: Int) {
        self.init(name: name, website: website)
        self.artists = artists
        self.albumes = albumes
    }
}

let musicDDBB = MusicDDBB(name: "Discogs",
                          website: "https://www.discogs.com/es/")
musicDDBB.name
musicDDBB.website

var musicDDBB2 = MusicDDBB(name: "Discogs",
                           website: "https://www.discogs.com/es/",
                           artists: [], 
                           albumes: 12) // ["Chelsea Wolfe", "How to dress well"])
musicDDBB2.name
musicDDBB2.website
//musicDDBB2.artists?.append("Russian Circles")
musicDDBB2.artists

let musicDDBB3 = musicDDBB2
musicDDBB3.website = "https://www.discogs.com/"
// both point to the same space of memory
musicDDBB2.website
musicDDBB3.website

struct Artist {
    var name: String
    var label: String
}

let artist = Artist(name: "Chelsea Wolfe", label: "Sargent House")
artist.name
artist.label
let artist2 = Artist(name: "Ryan Hemsworth", label: "Secret Songs")

musicDDBB2.artists?.append(artist)
musicDDBB2.artists?.append(artist2)
musicDDBB2.artists?.first?.name
musicDDBB2.artists?.last?.name

musicDDBB.artists?.append(contentsOf: [Artist(name: "Bratty", 
                                              label: "Universal Music"),
                                       Artist(name: "The National", 
                                              label: "Brassland")])

musicDDBB.artists

if let artists = musicDDBB.artists {
    for artist in artists {
        print(artist)
    }
}

// Functions: a piece of code that makes a task and just one
// has labels or empty labels to omit them in call place
// has default values as inits
func makeASong() {
    print("Recording a song...")
}

func makeASong(song: String) {
    print("Recording a song called \(song)...")
}

func makeASongWithReturn(song: String) -> String {
    print("Recording a song called \(song)...")
    return "Recording the song called \(song)..."
}

func makeASong(called song: String) {
    print("Recording a song called \(song)...")
}

func makeASong(_ song: String?) {
    guard let song else { return } // a guard stops the execution
    print("Recording a song called \(song)...")
}

makeASong()
makeASong(song: "Qué será de mi")
let message: String = makeASongWithReturn(song: "Que será de mi")
makeASong(called: "Tarde")
makeASong("Complicated Game")

// Closures: an abstraction of a function
// captures the context of vars and lets they where defined *
// similar to lambdas or blocks
let artists: [Artist] = []

artists.forEach { artist in
    print(artist.name)
}

var completionHandlers = [(String) -> Void]()

func playSong(callback: @escaping (String) -> Void) {
    completionHandlers.append(callback)
}
playSong { song in
    print("Playing song: \(song)...")
}

completionHandlers.forEach { $0("Piel de azúcar") }
let filter = musicDDBB2.artists?.filter { $0.name.isEmpty }
let map = musicDDBB2.artists?.map { $0.name }
let compactMap = musicDDBB2.artists?.compactMap { $0.name }
let first = musicDDBB2.artists?.first(where: { $0.label.contains("Songs") })

// Computed properties
// not store values *
// calculate its value based on others values
// use it instead a function without params *
extension MusicDDBB {
    
    var description: String {
        if let artists {
            return "The \(name) has \(artists.count) artist in there DDBB"
        } else {
            return "There are not artists int the \(name) DDBB yet"
        }
    }
    
    var albumesPerArtist: Int {
        get {
            guard let artists, let albumes else { return 0 }
            return albumes / artists.count
        }
        set {
            guard let artists else { albumes = 0; return }
            albumes = newValue * artists.count
        }
    }
}
print(musicDDBB.description)
print(musicDDBB3.description)
musicDDBB3.albumes
musicDDBB3.albumesPerArtist
musicDDBB3.albumesPerArtist = 4
musicDDBB3.albumes

// Property observers
// are stored properties *
struct MusicDDBBObserver {
    var albumesPerYear = 0
    
    var artists: [Artist] {
        didSet {
            albumesPerYear = artists.count * 4
        }
    }
}

var musicDDBBComputed = MusicDDBBObserver(artists: [])
musicDDBBComputed.artists
musicDDBBComputed.albumesPerYear
musicDDBBComputed.artists = [Artist(name: "Michael Jackson", 
                                    label: "Unniversal"),
                             Artist(name: "Lady Gaga",
                                    label: "Sony")]
musicDDBBComputed.albumesPerYear

// Inheritance
// when a subclass inherit function, properties and more of a superclass
// override to add custom implementation
// we use final keyword to avoid inherit or override *
