//
//  EditTaskView.swift
//  ToDoList
//
//  Created by Davaughn Williams on 4/15/25.
//

import SwiftUI

struct EditTaskView: View {

    @EnvironmentObject var colorManager: ColorManager
    @EnvironmentObject var vm: TaskViewModel

    var body: some View {
        ZStack {

            colorManager.backgroundColor
                .ignoresSafeArea()

            VStack {
                
                taskNameEditSection
            
                taskListEditSection
                
                taskDateEditSection
                
                taskTimeEditSection
                
                Spacer()
                
               createNewTaskButton
                    .padding(.top)
            }
            .padding()
        }

    }
}

#Preview {
    EditTaskView()
        .environmentObject(ColorManager())
        .environmentObject(TaskViewModel(taskName: "Test Name", listName: "Test List", date: "04/11/25", startTime: "4:00", endTime: "5:00", showCreateListScreen: false))
}

extension EditTaskView {

    private var taskNameEditSection: some View {
        VStack {
            HStack {
                Text("Edit Task Name")
                    .font(.custom("Tektur-medium", size: 21))
                    .padding(.leading)
                Spacer()
            }
            RoundedRectangle(cornerRadius: 13)
                .fill(.gray)
                .frame(width: 362, height: 34)
                .overlay(
                    TextField("Name of your task", text: $vm.taskName)
                        .padding()
                )
                .overlay(
                    RoundedRectangle(cornerRadius: 13)
                        .fill(.clear)
                        .stroke(colorManager.blueGradient, lineWidth: 5)
                )
        }
    }
    
    private var taskListEditSection: some View {
        VStack {
            HStack {
                Text("List")
                    .font(.custom("Tektur-medium", size: 21))
                    .padding(.leading)
                Spacer()
            }
            
            RoundedRectangle(cornerRadius: 13)
                .fill(.gray)
                .frame(width: 362, height: 34)
                .overlay(
                    TextField("Name of your list", text: $vm.listName)
                    
                        .padding()
                )
                .overlay(
                    RoundedRectangle(cornerRadius: 13)
                        .fill(.clear)
                        .stroke(colorManager.blueGradient, lineWidth: 5)
                )
                .overlay(
                    HStack {
                        Spacer()
                        Image(systemName: "arrowtriangle.down.fill")
                        
                        Button(
                            action: {
                                vm.showCreateListScreen.toggle()
                            },
                            label: {
                                Image(systemName: "plus")
                                    .foregroundStyle(.black)
                                    .padding(.trailing)
                            }
                        )
                    }
                )
            
                .sheet(isPresented: $vm.showCreateListScreen) {
                    CreateNewListView()
                        .presentationDetents([ /*.height(500)*/
                            .fraction(0.65)
                        ])
                        .presentationDragIndicator(.automatic)
                        .presentationCornerRadius(50)
                    
                }
        }
    }
    
    private var taskDateEditSection: some View {
        VStack {
            HStack {
                Text("Date")
                    .font(.custom("Tektur-medium", size: 21))
                    .padding(.leading)
                Spacer()
            }
            
            RoundedRectangle(cornerRadius: 13)
                .fill(.gray)
                .frame(width: 362, height: 34)
                .overlay(
                    TextField("Date of task", text: $vm.date)
                        .padding()
                )
                .overlay(
                    RoundedRectangle(cornerRadius: 13)
                        .fill(.clear)
                        .stroke(colorManager.blueGradient, lineWidth: 5)
                )
        }
    }
    
    private var taskTimeEditSection: some View {
        HStack {
            VStack {
                HStack {
                    Text("Start Time")
                        .font(.custom("Tektur-medium", size: 21))
                        .padding(.leading)
                    Spacer()
                }

                RoundedRectangle(cornerRadius: 13)
                    .fill(.gray)
                    .frame(width: 160, height: 34)
                    .overlay(
                        TextField(
                            "Time of start of task",
                            text: $vm.startTime
                        )
                        .padding()
                    )
                    .overlay(
                        RoundedRectangle(cornerRadius: 13)
                            .fill(.clear)
                            .stroke(
                                colorManager.blueGradient,
                                lineWidth: 5
                            )
                    )
            }
            .padding(.leading)

            Spacer()

            VStack {
                HStack {
                    Text("End Time")
                        .font(.custom("Tektur-medium", size: 21))
                        .padding(.leading)
                    Spacer()
                }

                RoundedRectangle(cornerRadius: 13)
                    .fill(.gray)
                    .frame(width: 160, height: 34)
                    .overlay(
                        TextField("Time of end of task", text: $vm.endTime)
                            .padding()
                    )
                    .overlay(
                        RoundedRectangle(cornerRadius: 13)
                            .fill(.clear)
                            .stroke(
                                colorManager.blueGradient,
                                lineWidth: 5
                            )
                    )
            }
            .padding([.trailing, .bottom])
        }
    }
    
    private var createNewTaskButton: some View {
        RoundedRectangle(cornerRadius: 40)
            .fill(colorManager.blueGradient)
            .frame(width: 374, height: 80)
            .shadow(color: .blue, radius: 10, y: 5)
            .overlay(
                Button(
                    action: {

                    },
                    label: {
                        Text("Create New Task")
                            .foregroundStyle(.white)

                            .font(.custom("Tektur-medium", size: 21))
                    }
                )
            )
    }
}

