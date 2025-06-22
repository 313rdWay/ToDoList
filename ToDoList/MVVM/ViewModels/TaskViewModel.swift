//
//  TaskViewModel.swift
//  ToDoList
//
//  Created by Davaughn Williams on 6/11/25.
//

import Foundation

class TaskViewModel: ObservableObject {
    
    @Published var tasks: [TaskModel] = []
    
    
//    @Published var taskName: String
//    
//    @Published var listName: String
//    
//    @Published var date: Date = .now
//    
//    @Published var startTime: Date = .now
//    
//    @Published var endTime: Date = Calendar.current.date(byAdding: .hour, value: 1, to: Date()) ?? .now
//    
//    @Published var isComplete: Bool = false
    
    @Published var showCreateListScreen: Bool = false
    
//    init(taskName: String, listName: String, date: Date, startTime: Date, endTime: Date, showCreateListScreen: Bool) {
//        self.taskName = taskName
//        self.listName = listName
//        self.date = date
//        self.startTime = startTime
//        self.endTime = endTime
//        self.showCreateListScreen = showCreateListScreen
//    }
    
    init(task: TaskModel, showCreateListScreen: Bool) {
        self.tasks = tasks
        self.showCreateListScreen = showCreateListScreen
    }
}
