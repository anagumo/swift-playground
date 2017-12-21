//
//  ViewController.swift
//  SayingHello
//
//  Created by Ariana S' on 20/12/17.
//  Copyright © 2017 Haiku Coding Club. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var currentDay = 0
    var currentGreeting: String?
    
    @IBOutlet weak var labelGreeting: UILabel!
    @IBOutlet weak var fieldName: UITextField!
    @IBOutlet weak var labelName: UILabel!
    
    enum Weekday: Int {
        case monday = 1, tuesday, wednesday, thursday, friday, saturday, sunday
        
        func greeting() -> String {
            switch self {
            case .monday:
                return "🤓 Happy Monday"
            case .tuesday:
                return "😃 Happy Tuesday"
            case .wednesday:
                return "😄 Happy Wednesday"
            case .thursday:
                return "😁 Happy Thursday"
            case .friday:
                return "😌 Good Friday"
            default:
                return "😎 It's weekend, have fun"
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        currentDay = fetchCurrentDay()
        currentGreeting = Weekday(rawValue: currentDay)?.greeting()
        sayingHello()
    }

    func sayingHello() {
        if let greeting = currentGreeting {
            labelGreeting.text = "\(greeting)!"
        }
    }
    
    func fetchCurrentDay() -> Int {
        let date = Date()
        let calendar = Calendar.current
        let currentDay = calendar.component(.weekdayOrdinal, from: date)
        
        return currentDay
    }
    
    @IBAction func showGreetingWithName() {
        let coolName: String? = fieldName.text
        
        if let name = coolName {
            if name.isEmpty {
                labelName.text = "Hey,"
            } else {
                labelName.text = "\(name),"
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

