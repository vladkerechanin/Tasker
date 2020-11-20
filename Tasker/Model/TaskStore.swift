//
//  TaskStore.swift
//  Tasker
//
//  Created by Владислав Керечанин on 17.11.2020.
//

import Foundation

class TaskStore {
    
    var tasks = [[Task](), [Task]()]
   
    //add tasks
    func add (_ task: Task, at index: Int, isDone: Bool = false) {
        
        //what section of array to put our elemnt in
        //if the task is done, we put it 1 section, if not - to section 0
        let section = isDone ? 1 : 0
        
        //updating appropriate array to add element
        tasks[section].insert(task, at: index)
    }
    
    
    //remove tasks
    func removeTask (at index: Int, isDone: Bool = false) -> Task {
        
        let section = isDone ? 1 : 0
        
        return tasks[section].remove(at: index)
    }
    
}
