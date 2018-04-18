/**
 * Copyright (c) 2017 Razeware LLC
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * Notwithstanding the foregoing, you may not use, copy, modify, merge, publish,
 * distribute, sublicense, create a derivative work, and/or sell copies of the
 * Software in any work that is designed, intended, or marketed for pedagogical or
 * instructional purposes related to programming, coding, application development,
 * or information technology.  Permission for such use, copying, modification,
 * merger, publication, distribution, sublicensing, creation of derivative works,
 * or sale is expressly withheld.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */

/*:
 ## CLASSES VS STRUCTURES

 Imagine you're writing a movie-viewing application in Swift. Users can create lists of movies and share those lists with other users.
 
 Create a `User` and a `List` class that uses reference semantics to help maintain lists between users.
 
 - `User` - Has a method `addList(_:)` which adds the given list to a dictionary of `List` objects (using the `name` as a key), and `list(forName:) -> List?` which will return the `List` for the provided name.
 - `List` - Contains a name and an array of movie titles. A `print` method will print all the movies in the list.
 - Create `jane` and `john` users and have them create and share lists. Have both `jane` and `john` modify the same list and call `print` from both users. Are all the changes reflected?
*/

// TODO: Write solution here
class List {
    let name: String
    var list: [String] = []
    
    init(name: String) {
        self.name = name
    }
    
    func print() {
        Swift.print("Movie list: \(name)")
        for movie in list {
            Swift.print(movie)
        }
        Swift.print("\n")
    }
}

class User {
    var lists: [String: List] = [:]
    
    func addList(_ list: List) {
        lists[list.name] = list
    }
    
    func list(forName name: String) -> List? {
        return lists[name]
    }
}

var jane = User()
var jhon = User()
var horrorList = List(name: "horror")

jane.addList(horrorList)
jhon.addList(horrorList)

jane.lists["horror"]?.list.append("Halloween")
jane.lists["horror"]?.list.append("Halloween 2")

jhon.lists["horror"]?.list.append("Saw")
jhon.lists["horror"]?.list.append("Saw 2")

// The share the same List
jane.lists["horror"]?.print()
jhon.lists["horror"]?.print()

/*:
 
 What happens when you implement the same with structs and what problems do you run into?
 */

 // TODO: Modify code above
struct ListStruct {
    let name: String
    var list: [String] = []
    
    init(name: String) {
        self.name = name
    }
    
    func print() {
        Swift.print("Movie list: \(name)")
        for movie in list {
            Swift.print(movie)
        }
        Swift.print("\n")
    }
}

struct UserStruct {
    var lists: [String: ListStruct] = [:]
    
    mutating func addList(_ list: ListStruct) {
        lists[list.name] = list
    }
    
    func list(forName name: String) -> ListStruct? {
        return lists[name]
    }
}

var janeStruct = UserStruct()
var jhonStruct = UserStruct()
var horrorStruct = ListStruct(name: "action")

janeStruct.addList(horrorStruct)
jhonStruct.addList(horrorStruct)

janeStruct.lists["action"]?.list.append("Rambo")
janeStruct.lists["action"]?.list.append("Terminator")
jhonStruct.lists["action"]?.list.append("Inception")

// The have your own copy of List
janeStruct.lists["action"]?.print()
jhonStruct.lists["action"]?.print()
