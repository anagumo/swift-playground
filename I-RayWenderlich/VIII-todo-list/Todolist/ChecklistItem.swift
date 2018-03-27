//
//  ChecklistItem.swift
//  Todolist
//
//  Created by Ariana on 26/03/18.
//  Copyright © 2018 Haiku Coding Club. All rights reserved.
//

import Foundation

class TodolistItem {
    let todo: String
    let completed: Bool = false
    
    init(todo: String) {
        self.todo = todo
    }
}
