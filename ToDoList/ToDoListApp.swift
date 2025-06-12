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
    @StateObject private var taskVM = TaskViewModel(
        taskName: "Test Name",
        listName: "Test List",
        date: .now,
        startTime: .now,
        endTime: .now,
        showCreateListScreen: false
    )
    var body: some Scene {
        WindowGroup {
            TaskHomeView()
                .environmentObject(ColorManager())
                .environmentObject(taskHomeVM)
                .environmentObject(
                    TaskViewModel(
                        taskName: "Test Name",
                        listName: "Test List",
                        date: .now,
                        startTime: .now,
                        endTime: .now,
                        showCreateListScreen: false
                    )
                )
        }
    }
}
