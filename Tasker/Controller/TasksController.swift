//
//  TasksController.swift
//  Tasker
//
//  Created by Владислав Керечанин on 15.11.2020.
//

import UIKit

class TasksController: UITableViewController {
    
    @IBAction func addTask(_ sender: UIBarButtonItem) {
    }
    var taskStore = TaskStore()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let toDoTasks = [Task(name:"Meditate"), Task(name:"Buy apples"), Task(name:"Workout")]
        let doneTasks = [Task(name:"Watch Netflix")]
        taskStore.tasks = [toDoTasks, doneTasks]
    }
}

// MARK: - DataSource

extension TasksController {
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        if section == 0 {
            return "To-do:"
        } else {
            return "Done:"
        }
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 55
    }
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return  taskStore.tasks.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return taskStore.tasks[section].count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = taskStore.tasks[indexPath.section][indexPath.row].name
        return cell
    }
    
    override func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        view.tintColor = #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)
    }
}
