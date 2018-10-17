//
//  TodolistItem.swift
//  Todolists
//
//  Created by Ariana Nagumo on 10/16/18.
//  Copyright © 2018 Haiku. All rights reserved.
//

import Foundation

class TodolistItem {
    var text = ""
    var checked = false
    
    func toggleChecked() {
        checked = !checked
    }
}
