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
    @StateObject private var taskVM = TaskViewModel(taskName: "Test Name", listName: "Test List", date: "04/11/25", startTime: "4:00", endTime: "5:00", showCreateListScreen: false)
    var body: some Scene {
        WindowGroup {
            TaskHomeView()
                .environmentObject(ColorManager())
                .environmentObject(taskHomeVM)
                .environmentObject(TaskViewModel(taskName: "Test Name", listName: "Test List", date: "04/11/25", startTime: "4:00", endTime: "5:00", showCreateListScreen: false))
        }
    }
}
