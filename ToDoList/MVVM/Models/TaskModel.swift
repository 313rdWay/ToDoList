//
//  TaskModel.swift
//  ToDoList
//
//  Created by Davaughn Williams on 3/8/25.
//

import Foundation
import SwiftUI
import SwiftUICore

let colors: [Color] = [.red, .pink, .purple, .blue, .cyan, .green, .yellow, .orange]
let icons: [String] = ["graduationcap.circle.fill", "pencil.tip.crop.circle.fill", "figure.run.circle.fill", "car.circle.fill"]

struct TaskModel {
    var id: UUID = UUID()
    var taskName: String
    var listName: ListModel
    var date: Date?
    var startTime: Date?
    var endTime: Date?
    var isComplete: Bool
}

struct ListModel {
    var id: UUID = UUID()
    let listName: String
    let color: [Color?] = colors
    let icon: Image?
}

