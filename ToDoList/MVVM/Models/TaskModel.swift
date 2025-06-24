//
//  TaskModel.swift
//  ToDoList
//
//  Created by Davaughn Williams on 3/8/25.
//

import Foundation
import SwiftUI
import SwiftUICore

struct TaskModel: Identifiable {
    var id: UUID = UUID()
    var taskName: String
    var dueDate: Date = .now
    var dueTime: Date = .now
    var isComplete: Bool
}
