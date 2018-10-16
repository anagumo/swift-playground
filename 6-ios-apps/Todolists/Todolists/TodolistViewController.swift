//
//  ViewController.swift
//  Todolists
//
//  Created by Ariana Nagumo on 10/15/18.
//  Copyright © 2018 Haiku. All rights reserved.
//

import UIKit

class TodolistViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    // MARK: - Table View Data Source
    // This method is like the getItemCount() in Android RecyclerView adapter
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    // This method is like the onBindViewHolder() in Android RecyclerView adapter
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TodolistItem", for: indexPath)
        
        let label = cell.viewWithTag(1000) as! UILabel
        
        if indexPath.row == 0 {
            label.text = "Run 5K"
        } else if indexPath.row == 1 {
            label.text = "Take a cold shower"
        } else if indexPath.row == 2 {
            label.text = "Work on the Android app"
        } else if indexPath.row == 3 {
            label.text = "Learn iOS Development"
        } else if indexPath.row == 4 {
            label.text = "Meditate"
        }
        
        return cell
    }
    
    // MARK: - Table View Delegate
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let cell = tableView.cellForRow(at: indexPath) {
            if cell.accessoryType == .none {
                cell.accessoryType = .checkmark
            } else {
                cell.accessoryType = .none
            }
        }
        tableView.deselectRow(at: indexPath, animated: true)
    }

}

