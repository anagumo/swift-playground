import UIKit

/** BASIC OPERTATORS
 Doing some math  */

// Arithmetic + - * / %
let a = 34
let b = 13

a + b
a - b
a * b
a / b
a % b

// Boolean == != >=
a == b
a != b
a > b
a < b
a >= b
a <= b

// Logic Boolean: AND, OR
let score = 100

if score > 0 && score < 50 {
    print("You win 100 dollars!")
} else if score >= 50 && score <= 99 {
    print("You win 200 dollars!")
} else if score == 100 {
    print("You win 500 dollars!")
} else {
    print("Game Over")
}

// Compound Operators += -= *= /=
var mutableA = a
mutableA += b
mutableA -= b
mutableA *= b
mutableA /= b
mutableA %= b
