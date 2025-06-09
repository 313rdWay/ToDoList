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
    @StateObject private var vm = TaskHomeViewModel()
    
    var body: some Scene {
        WindowGroup {
            TaskHomeView()
                .environmentObject(ColorManager())
                .environmentObject(vm)
        }
    }
}
