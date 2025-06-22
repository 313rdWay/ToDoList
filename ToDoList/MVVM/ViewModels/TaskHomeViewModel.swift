//
//  TaskHomeViewModel.swift
//  ToDoList
//
//  Created by Davaughn Williams on 6/9/25.
//

import Foundation

class TaskHomeViewModel: ObservableObject {
    
    @Published var activeSheet: ActiveSheet?
    
    enum ActiveSheet: Identifiable {
        case create, overview
        
        var id: Int { hashValue }
    }
            
    @Published var tasks: [TaskModel] = []
    
    var allTask: [TaskModel] {
        tasks
    }
    
    @Published var showCreateScreen: Bool = false
    
    @Published var showOverviewScreen: Bool = false
}
