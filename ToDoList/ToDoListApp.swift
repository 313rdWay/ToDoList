//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Davaughn Williams on 3/4/25.
//

import SwiftUI

@main
struct ToDoListApp: App {

    @EnvironmentObject var colorManager: ColorManager
    @StateObject private var taskHomeVM = TaskHomeViewModel()
    @StateObject private var taskVM = TaskViewModel(task: TaskModel(taskName: "Test Task", listName: ListModel(listName: "testName", icon: nil), isComplete: false), showCreateListScreen: false)
    
    var body: some Scene {
        WindowGroup {
            TaskHomeView()
                .environmentObject(ColorManager())
                .environmentObject(taskHomeVM)
                .environmentObject(taskVM)
        }
    }
}
