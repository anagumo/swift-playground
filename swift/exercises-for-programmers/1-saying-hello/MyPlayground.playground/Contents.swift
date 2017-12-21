//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let date = Date()
let calendar = Calendar.current
let currentDay = calendar.component(.weekdayOrdinal, from: date)

enum WeekDay: Int {
    case monday = 1, tuesday, wednesday, thursday, friday, saturday, sunday
    
    func day() -> String {
        switch self {
        case .wednesday:
            return "Wednesday"
        default:
            return "Just another day"
        }
    }
}

let day = WeekDay(rawValue: currentDay)?.day()
