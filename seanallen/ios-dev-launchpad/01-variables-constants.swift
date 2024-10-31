import UIKit

/** VARIABLES & CONSTANTS
 We use them to capture a value that we use later in our code */

/** Variables
 It is mutable, it can be changed */
var greeting = "Hello, playground"
greeting = "Godbye, playground"

var highScore = 0
highScore = 32

/** Constants
 It is immutable, it cannot be changed */
let pi = 3.1416
//pi = 2.3456 -> Cannot assign to value: 'pi' is a 'let' constant, also pi its a value that never change

let myName = "Ari"
// myName = "Sean" -> Cannot assign to value: 'myName' is a 'let' constant, also this is not my name :)

/** Remeber that Swift make sure you use your variables and constants
 the correct way according to the values you are captured, avoiding mixed types */
// myName = 13 -> Cannot assign value of type 'Int' to type 'String'
