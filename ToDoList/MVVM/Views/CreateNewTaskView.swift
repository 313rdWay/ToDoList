//
//  CreateNewTaskView.swift
//  ToDoList
//
//  Created by Davaughn Williams on 3/8/25.
//

import SwiftUI

struct CreateNewTaskView: View {

    @EnvironmentObject var colorManager: ColorManager
    @EnvironmentObject var vm: TaskViewModel

    var body: some View {
        ZStack {

            colorManager.backgroundColor
                .ignoresSafeArea()

            VStack {

                taskNameCreateSection

                listNameCreateSection

                dateCreateSection

                timeCreateSection

                createNewTaskButton
                    .padding(.top)
            }
            .padding()
        }
        .overlay(borderOverlay)
    }
}

#Preview {
    CreateNewTaskView()
        .environmentObject(ColorManager())
        .environmentObject(
            TaskViewModel(
                taskName: "Test Name",
                listName: "Test List",
                date: "04/11/25",
                startTime: "4:00",
                endTime: "5:00",
                showCreateListScreen: false
            )
        )
}

extension CreateNewTaskView {

    private var taskNameCreateSection: some View {
        VStack {
            HStack {
                Text("Task Name")
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

    private var listNameCreateSection: some View {
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
                        .overlay(
                            RoundedRectangle(cornerRadius: 43)
                                .stroke(
                                    colorManager.blueGradient,
                                    lineWidth: 10
                                )
                                .offset(y: 32)
                                .frame(width: 390, height: 555)
                        )

                }
        }
    }

    private var dateCreateSection: some View {
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

    private var timeCreateSection: some View {
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
                        TextField(
                            "Time of end of task",
                            text: $vm.endTime
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
