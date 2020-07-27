import UIKit

/** EXTENSIONS
 Add custom funcionality to an existing type */

extension Int {
    var isEven: Bool {
        return self % 2 == 0
    }
}

let number = 4
number.isEven
