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
    let taskName: String
    let listName: ListModel
    let date: String?
    let startTime: String?
    let endTime: String?
}

struct ListModel {
    let listName: String
    let color: [Color?] = colors
    let icon: Image?
}

