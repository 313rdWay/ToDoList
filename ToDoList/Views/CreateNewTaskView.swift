//
//  CreateNewTaskView.swift
//  ToDoList
//
//  Created by Davaughn Williams on 3/8/25.
//

import SwiftUI

struct CreateNewTaskView: View {
    @State private var taskName: String = ""
    @State private var listName: String = ""
    @State private var date: String = ""
    @State private var startTime: String = ""
    @State private var endTime: String = ""
    
    var body: some View {
        Spacer()
        RoundedRectangle(cornerRadius: 50)
            .fill(.white)
            .shadow(radius: 30)
            .edgesIgnoringSafeArea(.bottom)
            .frame(height: UIScreen.main.bounds.height * 0.5)
            .overlay(
                VStack {
                    HStack {
                        Text("Task Name")
                            .font(.custom("Tektur-medium", size: 21))
                            .padding(.leading, 30)
                        Spacer()
                    }
                    RoundedRectangle(cornerRadius: 13)
                        .fill(.gray)
                        .frame(width: 362, height: 34)
                        .overlay(
                            TextField("Name of your task", text: $taskName)
                        .padding()
                    )
                    
                    HStack {
                        Text("List")
                            .font(.custom("Tektur-medium", size: 21))
                            .padding(.leading, 30)
                        Spacer()
                    }
                    
                    RoundedRectangle(cornerRadius: 13)
                        .fill(.gray)
                        .frame(width: 362, height: 34)
                        .overlay(
                            TextField("Name of your list", text: $listName)
                        .padding()
                    )
                    
                    HStack {
                        Text("Date")
                            .font(.custom("Tektur-medium", size: 21))
                            .padding(.leading, 30)
                        Spacer()
                    }
                    
                    RoundedRectangle(cornerRadius: 13)
                        .fill(.gray)
                        .frame(width: 362, height: 34)
                        .overlay(
                            TextField("Date of task", text: $date)
                        .padding()
                    )
                    
                    HStack {
                        VStack {
                            HStack {
                                Text("Start Time")
                                    .font(.custom("Tektur-medium", size: 21))
                                    .padding(.leading, -30)
                            }
                            
                            RoundedRectangle(cornerRadius: 13)
                                .fill(.gray)
                                .frame(width: 160, height: 34)
                                .overlay(
                                    TextField("Time of start of task", text: $startTime)
                                        .padding()
                                )
                        }
                        .padding(.leading)
                        
                        Spacer()
                        
                        VStack {
                            HStack {
                                Text("End Time")
                                    .font(.custom("Tektur-medium", size: 21))
                                    .padding(.leading, -55)
                            }
                            
                            RoundedRectangle(cornerRadius: 13)
                                .fill(.gray)
                                .frame(width: 160, height: 34)
                                .overlay(
                                    TextField("Time of end of task", text: $endTime)
                                        .padding()
                                )
                        }
                        .padding(.trailing)
                    }
                    RoundedRectangle(cornerRadius: 40)
                        .frame(width: 374, height: 80)
                        .overlay(
                            Button(action: {
                                
                            }, label: {
                                Text("Create New Task")
                                    .foregroundStyle(.white)
                                    .font(.custom("Tektur-medium", size: 21))
                            })
                        )
                }
            )
    }
}

#Preview {
    CreateNewTaskView()
}
