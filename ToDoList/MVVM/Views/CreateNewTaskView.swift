//
//  CreateNewTaskView.swift
//  ToDoList
//
//  Created by Davaughn Williams on 3/8/25.
//

//import SwiftUI
//
//struct CreateNewTaskView: View {
//
////    let task: TaskModel
//    @EnvironmentObject var colorManager: ColorManager
//    @EnvironmentObject var vm: TaskViewModel
//
//    var body: some View {
//        ZStack {
//            colorManager.backgroundColor
//                .ignoresSafeArea()
//
//            VStack(spacing: 15) {
//
//                taskNameCreateSection
//
//                listNameCreateSection
//
//                dateCreateSection
//
//                timeCreateSection
//
//                Spacer()
//
//                createNewTaskButton
//            }
////            .overlay(borderOverlay)
//        }
//    }
//}
//
//#Preview {
//    CreateNewTaskView(/*task: TaskModel(taskName: "Complete homework and finsh science project", listName: ListModel(listName: "Test List", icon: nil), isComplete: false)*/)
//        .environmentObject(ColorManager())
////        .environmentObject(TaskViewModel(task: <#TaskModel#>, showCreateListScreen: <#Bool#>))
//}
//
//extension CreateNewTaskView {
//
//    private var taskNameCreateSection: some View {
//        VStack(alignment: .leading) {
//            Text("Task Name")
//                .font(.custom("Tektur-medium", size: 21))
//            RoundedRectangle(cornerRadius: 13)
//                .fill(.gray)
//                .frame(height: 34)
//                .overlay(
//                    ZStack {
////                        TextField("Name of your task", text: $vm.taskName)
////                            .padding(.horizontal)
//
//                        RoundedRectangle(cornerRadius: 13)
//                            .fill(.clear)
//                            .stroke(colorManager.blueGradient, lineWidth: 5)
//                    }
//                )
//        }
//        .frame(maxWidth: .infinity)
//        .padding(.horizontal)
//    }
//
//    private var listNameCreateSection: some View {
//        VStack(alignment: .leading) {
//            Text("List")
//                .font(.custom("Tektur-medium", size: 21))
//
//            RoundedRectangle(cornerRadius: 13)
//                .fill(.gray)
//                .frame(height: 34)
//                .overlay(
//                    ZStack {
////                        TextField("Name of your list", text: $vm.listName)
////                            .padding(.horizontal)
//
//                        RoundedRectangle(cornerRadius: 13)
//                            .fill(.clear)
//                            .stroke(colorManager.blueGradient, lineWidth: 5)
//                    }
//                )
//                .overlay(
//                    HStack(spacing: 16) {
//                        Spacer()
//                        Image(systemName: "arrowtriangle.down.fill")
//
//                        Button(
//                            action: {
//                                vm.showCreateListScreen.toggle()
//                            },
//                            label: {
//                                Image(systemName: "plus")
//                                    .foregroundStyle(.black)
//                            }
//                        )
//                    }
//                    .padding(.trailing)
//                )
//
//                .sheet(isPresented: $vm.showCreateListScreen) {
//                    CreateNewListView(task: TaskModel(taskName: "Complete homework and finsh science project", listName: ListModel(listName: "Test List", icon: nil), isComplete: false))
//                        .presentationDetents([
//                            .fraction(0.65)
//                        ])
//                        .presentationDragIndicator(.automatic)
//                        .presentationCornerRadius(50)
//
//                }
//        }
//        .frame(maxWidth: .infinity)
//        .padding(.horizontal)
//    }
//
//    private var dateCreateSection: some View {
//        VStack(alignment: .leading) {
//            Text("Date")
//                .font(.custom("Tektur-medium", size: 21))
//
//            RoundedRectangle(cornerRadius: 13)
//                .fill(.gray)
//                .frame(height: 34)
//                .overlay(
//                    ZStack {
////                        DatePicker(
////                            "Date",
////                            selection: $task.date,
////                            displayedComponents: .date
////                        )
////                        .labelsHidden()
//
//                        RoundedRectangle(cornerRadius: 13)
//                            .fill(.clear)
//                            .stroke(colorManager.blueGradient, lineWidth: 5)
//                    }
//                )
//        }
//        .frame(maxWidth: .infinity)
//        .padding(.horizontal)
//    }
//
//    private var timeCreateSection: some View {
//        HStack(spacing: 10) {
//            VStack(alignment: .leading) {
//                    Text("Start Time")
//                        .font(.custom("Tektur-medium", size: 21))
//
//                RoundedRectangle(cornerRadius: 13)
//                    .fill(.gray)
//                    .frame(height: 34)
//                    .overlay(
//                        ZStack {
////                            DatePicker(
////                                "Start Time",
////                                selection: $vm.startTime,
////                                displayedComponents: .hourAndMinute
////                            )
////                            .labelsHidden()
//                            
//                            RoundedRectangle(cornerRadius: 13)
//                                .fill(.clear)
//                                .stroke(
//                                    colorManager.blueGradient,
//                                    lineWidth: 5
//                                )
//                        }
//                    )
//            }
//            .frame(maxWidth: .infinity)
//
//            Spacer()
//
//            VStack(alignment: .leading) {
//                    Text("End Time")
//                        .font(.custom("Tektur-medium", size: 21))
//
//                RoundedRectangle(cornerRadius: 13)
//                    .fill(.gray)
//                    .frame(height: 34)
//                    .overlay(
//                        ZStack {
////                            DatePicker(
////                                "Start Time",
////                                selection: $vm.startTime,
////                                displayedComponents: .hourAndMinute
////                            )
////                            .labelsHidden()
//                            
//                            RoundedRectangle(cornerRadius: 13)
//                                .fill(.clear)
//                                .stroke(
//                                    colorManager.blueGradient,
//                                    lineWidth: 5
//                                )
//                        }
//                    )
//            }
//            .frame(maxWidth: .infinity)
//        }
//        .padding(.horizontal)
//    }
//
//    private var createNewTaskButton: some View {
//                Button(
//                    action: {
//
//                    },
//                    label: {
//                        ZStack {
//                            RoundedRectangle(cornerRadius: 40)
//                                .fill(colorManager.blueGradient)
//                                .frame(width: 374, height: 80)
//                                .shadow(color: .blue, radius: 10, y: 5)
//                            
//                            Text("Create New Task")
//                                .foregroundStyle(.white)
//                                .font(.custom("Tektur-medium", size: 21))
//                        }
//                    }
//            )
//    }
//
//    private var borderOverlay: some View {
//        RoundedRectangle(cornerRadius: 43)
//            .stroke(colorManager.blueGradient, lineWidth: 10)
//            .padding(5)
//            .mask(
//                VStack(spacing: 0) {
//                    Rectangle()
//                    Rectangle().frame(height: 50).opacity(0)
//                }
//            )
//    }
//}
