//
//  PreviewProviderData.swift
//  ToDoList
//
//  Created by Davaughn Williams on 6/22/25.
//

import SwiftUI
//@testable import YourAppName

struct PreviewData {
    
    static let sampleTask = TaskModel(
        taskName: "Complete homework and finsh science project",
        dueTime: Calendar.current.date(byAdding: .hour, value: 1, to: Date())!,
        isComplete: false
    )
    
    static let completedTask = TaskModel(
        taskName: "Complete homework and finsh science project as well as code up the greatest TODO List applications every made to show off to all of the cool folks",
        dueTime: Calendar.current.date(byAdding: .hour, value: 1, to: Date())!,
        isComplete: true
    )
    
    static let taskHomeViewModel: TaskHomeViewModel = {
        let vm = TaskHomeViewModel()
        vm.tasks = [sampleTask, completedTask]
        return vm
    }()
    
}
