//
//  ViewController.swift
//  Todolists
//
//  Created by Ariana Nagumo on 10/15/18.
//  Copyright © 2018 Haiku. All rights reserved.
//

import UIKit

class TodolistViewController: UITableViewController {
    var items = [TodolistItem]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let item1 = TodolistItem()
        item1.text = "Run 5K"
        items.append(item1)
        
        let item2 = TodolistItem()
        item2.text = "Take a cold shower"
        items.append(item2)
        
        let item3 = TodolistItem()
        item3.text = "Learn iOS Development"
        items.append(item3)
    }
    
    // MARK: - Table View Data Source
    // This method is like the getItemCount() in Android RecyclerView adapter
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    // This method is like the onBindViewHolder() in Android RecyclerView adapter
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TodolistItem", for: indexPath)
        let item = items[indexPath.row]
        
        configureText(for: cell, with: item)
        configureCheckmark(for: cell, with: item)
        
        return cell
    }
    
    // MARK: - Table View Delegate
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let cell = tableView.cellForRow(at: indexPath) {
            let item = items[indexPath.row]
            item.toggleChecked()
            configureCheckmark(for: cell, with: item)
        }
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func configureText(for cell: UITableViewCell, with item: TodolistItem) {
        let label = cell.viewWithTag(1000) as! UILabel
        label.text = item.text
    }
    
    func configureCheckmark(for cell: UITableViewCell, with item: TodolistItem) {
        if item.checked {
            cell.accessoryType = .checkmark
        } else {
            cell.accessoryType = .none
        }
    }

}

