//
//  TaskViewModel.swift
//  ToDoList
//
//  Created by Davaughn Williams on 6/11/25.
//

import Foundation

class TaskViewModel: ObservableObject {
    
    @Published var taskName: String
    
    @Published var listName: String
    
    @Published var date: String
    
    @Published var startTime: String = ""
    
    @Published var endTime: String = ""
    
    @Published var showCreateListScreen: Bool = false
    
    init(taskName: String, listName: String, date: String, startTime: String, endTime: String, showCreateListScreen: Bool) {
        self.taskName = taskName
        self.listName = listName
        self.date = date
        self.startTime = startTime
        self.endTime = endTime
        self.showCreateListScreen = showCreateListScreen
    }
}
