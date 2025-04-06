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
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(ColorManager())
        }
    }
}
