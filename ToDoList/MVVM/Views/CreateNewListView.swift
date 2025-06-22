//
//  CreateNewListView.swift
//  ToDoList
//
//  Created by Davaughn Williams on 3/8/25.
//

//import SwiftUI
//
//struct CreateNewListView: View {
//
//    let task: TaskModel
//    @EnvironmentObject var colorManager: ColorManager
//    @EnvironmentObject var vm: TaskViewModel
//    var body: some View {
//        ZStack {
//            colorManager.backgroundColor
//                .ignoresSafeArea()
//
//            VStack(spacing: 15) {
//                listNameCreateSection
//
//                colorSelectionSection
//
//                iconSelectionSection
//
//                Spacer()
//                
//                createNewListButton
//            }
//        }
//    }
//}
//
//#Preview {
//    CreateNewListView(task: TaskModel(taskName: "Complete homework and finsh science project", listName: ListModel(listName: "Test List", icon: nil), isComplete: false))
//        .environmentObject(ColorManager())
////        .environmentObject(
////            TaskViewModel(
////                taskName: "Test Name",
////                listName: "Test List",
////                date: .now,
////                startTime: .now,
////                endTime: .now,
////                showCreateListScreen: false
////            )
////        )
//}
//
//extension CreateNewListView {
//
//    private var listNameCreateSection: some View {
//        VStack(alignment: .leading) {
//                Text("List Name")
//                    .font(.custom("Tektur-medium", size: 21))
//            
//            RoundedRectangle(cornerRadius: 13)
//                .fill(.gray)
//                .frame(height: 34)
//                .overlay(
//                    ZStack {
////                        TextField("Name of your task", text: $task.listName)
////                            .padding(.horizontal)
//                        RoundedRectangle(cornerRadius: 13)
//                            .fill(.clear)
//                            .stroke(colorManager.blueGradient, lineWidth: 5)
//                    }
//                )
//        }
//        .frame(maxWidth: .infinity)
//        .padding(.horizontal)
//        
//    }
//
//    private var colorSelectionSection: some View {
//        VStack(alignment: .leading) {
//                Text("Colors")
//                    .font(.custom("Tektur-medium", size: 21))
//            
//            HStack(spacing: 14) {
//                ForEach(0..<colors.count, id: \.self) { index in
//                    Button {
//
//                    } label: {
//                        Circle()
//                            .fill(colors[index])
//                            .frame(width: 33, height: 33)
//                    }
//                }
//            }
//            
//        }
//        .frame(maxWidth: .infinity)
//        .padding(.horizontal)
//    }
//
//    private var iconSelectionSection: some View {
//        VStack(alignment: .leading) {
//                Text("Icon")
//                    .font(.custom("Tektur-medium", size: 21))
//            HStack(spacing: 2) {
//                ForEach(0..<4) { index in
//                    Button {
//
//                    } label: {
//                        Image(systemName: "graduationcap.circle.fill")
//                            .foregroundStyle(colorManager.iconColor)
//                            .font(.system(size: 48))
//                    }
//                }
//                Spacer()
//            }
//        }
//        .frame(maxWidth: .infinity)
//        .padding(.horizontal)
//    }
//    
//    private var createNewListButton: some View {
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
//                            Text("Create New List")
//                                .foregroundStyle(.white)
//                                .font(.custom("Tektur-medium", size: 21))
//                        }
//                    }
//                )
//    }
//}
