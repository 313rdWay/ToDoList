//
//  TaskViewModel.swift
//  ToDoList
//
//  Created by Davaughn Williams on 6/11/25.
//

import Foundation

class TaskViewModel: ObservableObject {
    
    @Published var tasks: [TaskModel] = []
        
    init(task: TaskModel) {
        self.tasks = tasks
    }
    
    func addTask(_ task: TaskModel) {
        tasks.append(task)
    }
}
