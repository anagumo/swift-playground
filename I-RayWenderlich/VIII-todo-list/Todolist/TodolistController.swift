//
//  ViewController.swift
//  Todolist
//
//  Created by Ariana on 26/03/18.
//  Copyright © 2018 Haiku Coding Club. All rights reserved.
//

import UIKit

class TodolistViewController: UITableViewController {
    
    var todos: [TodolistItem] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todos.count
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let cell = tableView.cellForRow(at: indexPath) {
            if cell.accessoryType == .none {
                cell.accessoryType = .checkmark
            } else {
                cell.accessoryType = .none
            }
            tableView.deselectRow(at: indexPath, animated: true)
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let viewCell = tableView.dequeueReusableCell(withIdentifier: "TodolistItem", for: indexPath)
        let label = viewCell.viewWithTag(1000) as! UILabel
        
        label.text = "Fila \(indexPath.row)"
        return viewCell
    }
    
}
