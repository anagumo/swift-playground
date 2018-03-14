//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, Chapter 10"

// Challenges
/**
 * 2. Create a T-shirt structure that has size, color and material options.
 * Provide methods to calculate the cost of a shirt based on its attributes
 */
struct Tshirt {
    let size: Int // 1 smal, 2 medium, 3 large
    let color: String // gray, black..., gold (It's the most expensive)
    let material: String // algodon, poliester, seda
    
    func cost() -> String {
        if costPerMaterial() > 0 {
            switch size {
            case 1:
                return "\(costPerMaterial() + 5.00)"
            case 2:
                return "\(costPerMaterial() + 10.00)"
            case 3:
                return "\(costPerMaterial() + 20.00)"
            default:
                return "Not Found :("
            }
        } else {
            return "Not Found :("
        }
    }
    
    func costPerMaterial() -> Double {
        switch material {
        case "algodon":
            return isGold() ? 30.00 : 20.00
        case "poliester":
            return isGold() ? 40.00 : 30.00
        case "seda":
            return isGold() ? 50.00 : 40.00
        default:
            return 0
        }
    }
    
    func isGold() -> Bool {
        return color.lowercased() == "gold"
    }
    
}

let tshirt = Tshirt(size: 3, color: "gold", material: "seda")
tshirt.cost()

let notFoundTshirt = Tshirt(size: 2, color: "gray", material: "cuero")
notFoundTshirt.cost()
