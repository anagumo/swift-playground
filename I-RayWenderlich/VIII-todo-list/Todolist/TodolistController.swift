//
//  ViewController.swift
//  Todolist
//
//  Created by Ariana on 26/03/18.
//  Copyright © 2018 Haiku Coding Club. All rights reserved.
//

import UIKit

class TodolistViewController: UITableViewController, ItemDetailViewControllerDelegate {
    
    var items: [TodolistItem] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = true
        buildSomeData()
    }
    
    func buildSomeData() {
        let todo1 = TodolistItem(todo: "Run 5K", completed: false)
        items.append(todo1)
        let todo2 = TodolistItem(todo: "Drink water", completed: false)
        items.append(todo2)
        let todo4 = TodolistItem(todo: "Take a cold shower", completed: false)
        items.append(todo4)
    }
    
    @IBAction func addItem(_ sender: Any) {
        let newRowIndex = items.count
        
        let item = TodolistItem(todo: "Talk with friends", completed: true)
        items.append(item)
        
        let indexPath = IndexPath(row: newRowIndex, section: 0)
        let indexPaths = [indexPath]
        tableView.insertRows(at: indexPaths, with: .automatic)
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        items.remove(at: indexPath.row)
        //tableView.reloadData()
        let indexPaths = [indexPath]
        tableView.deleteRows(at: indexPaths, with: .automatic)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let cell = tableView.cellForRow(at: indexPath) {
            let item = items[indexPath.row]
            item.toggleChecked()
            
            configureCheckmark(for: cell, with: item)
        }
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let viewCell = tableView.dequeueReusableCell(withIdentifier: "TodolistItem", for: indexPath)
        let item = items[indexPath.row]
        
        configureData(for: viewCell, with: item)
        configureCheckmark(for: viewCell, with: item)
        return viewCell
    }
    
    func configureData(for cell: UITableViewCell, with item: TodolistItem) {
        let label = cell.viewWithTag(1000) as! UILabel
        label.text = item.todo
    }
    
    func configureCheckmark(for cell: UITableViewCell, with item: TodolistItem) {
        let label = cell.viewWithTag(1001) as! UILabel
        
        if item.completed {
            label.text = "✔︎"
        } else {
            label.text = ""
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddItem" {
            let controller = segue.destination as! ItemDetailViewController
            // Asigns this controller as a delegate of AddItemTableViewController
            controller.delegate = self
        } else if segue.identifier == "EditItem" {
            let controller = segue.destination as! ItemDetailViewController
            controller.delegate = self
            if let indexPath = tableView.indexPath(for: sender as! UITableViewCell) {
                controller.itemToEdit = items[indexPath.row]
            }
        }
    }
    
    // addItemViewController Protocol
    func itemDetailViewControllerDidCancel(_ controller: ItemDetailViewController) {
        navigationController?.popViewController(animated: true)
    }
    
    func itemDetailViewController(_ controller: ItemDetailViewController, didFinishAdding item: TodolistItem) {
        items.append(item)
        tableView.reloadData()
        navigationController?.popViewController(animated: true)
    }
    
    func itemDetailViewController(_ controller: ItemDetailViewController, didFinishEditing item: TodolistItem) {
        if let index = items.index(of: item) {
            let indexPath = IndexPath(row: index, section: 0)
            if let cell = tableView.cellForRow(at: indexPath) {
                configureData(for: cell, with: item)
            }
        }
        navigationController?.popViewController(animated: true)
    }
    
}
