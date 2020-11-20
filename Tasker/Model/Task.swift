//
//  Task.swift
//  Tasker
//
//  Created by Владислав Керечанин on 17.11.2020.
//

import Foundation

class Task {
    
    var name: String
    var isDone: Bool
    
    init(name: String, isDone: Bool = false) {
        self.name = name
        self.isDone = isDone
    }
    
}
