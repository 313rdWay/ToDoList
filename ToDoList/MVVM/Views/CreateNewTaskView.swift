//
//  CreateNewTaskView.swift
//  ToDoList
//
//  Created by Davaughn Williams on 3/8/25.
//

import SwiftUI

struct CreateNewTaskView: View {

    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var colorManager: ColorManager
    @EnvironmentObject var vm: TaskViewModel
    @EnvironmentObject var homeVM: TaskHomeViewModel
    @State private var newTask = TaskModel(
        taskName: "",
        dueTime: .now,
        isComplete: false)

    var body: some View {
        ZStack {
            colorManager.backgroundColor
                .ignoresSafeArea()

            VStack(spacing: 15) {

                taskNameCreateSection

                dateAndTimeCreateSection

                Spacer()

                createNewTaskButton
            }
            .padding(.top)
//            .overlay(borderOverlay)
        }
    }
    
   
}

#Preview {
    CreateNewTaskView()
        .environmentObject(ColorManager())
        .environmentObject(TaskViewModel(task: TaskModel(taskName: "test", isComplete: false)))
        .environmentObject(TaskHomeViewModel())
}

extension CreateNewTaskView {

    private var taskNameCreateSection: some View {
        VStack(alignment: .leading) {
            Text("Task Name")
                .font(.custom("Tektur-medium", size: 21))
            RoundedRectangle(cornerRadius: 13)
                .fill(.gray)
                .frame(height: 34)
                .overlay(
                    ZStack {
                        TextField("Name of your task", text: $newTask.taskName)
                            .padding(.horizontal)

                        RoundedRectangle(cornerRadius: 13)
                            .fill(.clear)
                            .stroke(colorManager.blueGradient, lineWidth: 5)
                    }
                )
        }
        .frame(maxWidth: .infinity)
        .padding(.horizontal)
    }

    private var dateAndTimeCreateSection: some View {
        HStack(spacing: 10) {
            VStack(alignment: .leading) {
                Text("Date")
                    .font(.custom("Tektur-medium", size: 21))

                RoundedRectangle(cornerRadius: 13)
                    .fill(.gray)
                    .frame(height: 34)
                    .overlay(
                        ZStack {
                            DatePicker(
                                "Date",
                                selection: $newTask.dueDate,
                                displayedComponents: .date
                            )
                            .labelsHidden()

                            RoundedRectangle(cornerRadius: 13)
                                .fill(.clear)
                                .stroke(colorManager.blueGradient, lineWidth: 5)
                        }
                    )
            }
            .frame(maxWidth: .infinity)

            Spacer()

            
            VStack(alignment: .leading) {
                    Text("Time")
                        .font(.custom("Tektur-medium", size: 21))

                RoundedRectangle(cornerRadius: 13)
                    .fill(.gray)
                    .frame(height: 34)
                    .overlay(
                        ZStack {
                            DatePicker(
                                "Start Time",
                                selection: $newTask.dueTime,
                                displayedComponents: .hourAndMinute
                            )
                            .labelsHidden()
                            
                            RoundedRectangle(cornerRadius: 13)
                                .fill(.clear)
                                .stroke(
                                    colorManager.blueGradient,
                                    lineWidth: 5
                                )
                        }
                    )
            }
            .frame(maxWidth: .infinity)
        }
        .padding(.horizontal)
    }

    private var createNewTaskButton: some View {
                Button(
                    action: {
                        homeVM.tasks.append(newTask)
                        presentationMode.wrappedValue.dismiss()
                    },
                    label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 40)
                                .fill(colorManager.blueGradient)
                                .frame(width: 374, height: 80)
                                .shadow(color: .blue, radius: 10, y: 5)
                            
                            Text("Create New Task")
                                .foregroundStyle(.white)
                                .font(.custom("Tektur-medium", size: 21))
                        }
                    }
            )
    }

    private var borderOverlay: some View {
        RoundedRectangle(cornerRadius: 43)
            .stroke(colorManager.blueGradient, lineWidth: 10)
            .padding(5)
            .mask(
                VStack(spacing: 0) {
                    Rectangle()
                    Rectangle().frame(height: 50).opacity(0)
                }
            )
    }
}
