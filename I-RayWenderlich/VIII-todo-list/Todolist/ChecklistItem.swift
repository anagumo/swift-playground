//
//  ChecklistItem.swift
//  Todolist
//
//  Created by Ariana on 26/03/18.
//  Copyright © 2018 Haiku Coding Club. All rights reserved.
//

import Foundation

class TodolistItem: NSObject {
    var todo: String
    var completed: Bool
    
    init(todo: String, completed: Bool) {
        self.todo = todo
        self.completed = completed
    }
    
    func toggleChecked() {
        completed = !completed
    }
    
}
