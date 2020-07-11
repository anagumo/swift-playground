import UIKit

/** Collections
 Swift provides three primary collections to save collection of values:
 Arrays, Sets and Dictionaries */

/** Array
 An array saves a collection of values of the same type in an order list */
let song1 = "Hey Rosey"
let song2 = "Rylan"
let song3 = "I am easy to find"

var album = [song1, song2, song3]

// If we declare an empty array we need to be excplicit with the type
let album2: [String] = []

// There are some things we can do with arrays. This way we can get the number of songs of the album.
album.count
// Or just get the first song
album.first
// Or maybe the last one
album.last

/** We can get the name of a song by its position in the list. Remeber that an array starts from index 0, so:
 song1 = index 0
 song2 = index 1
 song3 = index 2 */

// To get the second song we use Subscript Syntax and the index 1:
album[1]

// Another great thing it's that we can manipulate the array adding new songs to the album
// Add them to the end of the list
album.append("Light Years")
// Or add one to an specific position
album.insert("You Had Your Soul With You", at: 0)

// Finally you can play a little bit more:
// Sort it
album.sort()
// Reverse it
album.reverse()
// Or shuffle it
album.shuffle()

/** Set
 A set is a list of unorder unique values, this way it has no duplicate items. Hashables - Performance */

// Using sets we can get the unique values from an array for example:
let ages = [23, 56, 90, 23, 18, 45]
let set = Set(ages)
