//
//  CreateNewTaskView.swift
//  ToDoList
//
//  Created by Davaughn Williams on 3/8/25.
//

import SwiftUI

struct CreateNewTaskView: View {
    
    @EnvironmentObject var colorManager: ColorManager
    @State private var taskName: String = ""
    @State private var listName: String = ""
    @State private var date: String = ""
    @State private var startTime: String = ""
    @State private var endTime: String = ""
    
    @State var showCreateListScreen: Bool = false
    
    var body: some View {
        ZStack {
            
            colorManager.backgroundColor
                .ignoresSafeArea()
            
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
                    TextField("Name of your task", text: $taskName)
                        .padding()
                )
                .overlay (
                    RoundedRectangle(cornerRadius: 13)
                        .fill(.clear)
                        .stroke(colorManager.blueGradient, lineWidth: 5)
                )
            
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
                    TextField("Name of your list", text: $listName)
                    
                        .padding()
                    )
                .overlay (
                    RoundedRectangle(cornerRadius: 13)
                        .fill(.clear)
                        .stroke(colorManager.blueGradient, lineWidth: 5)
                )
                        .overlay(
                            HStack {
                                Spacer()
                                Image(systemName: "arrowtriangle.down.fill")
                                
                                
                                Button(action: {
                                    showCreateListScreen.toggle()
                                }, label: {
                                    Image(systemName: "plus")
                                        .foregroundStyle(.black)
                                        .padding(.trailing)
                                })
                            }
                        )
                    
                .sheet(isPresented: $showCreateListScreen) {
                    CreateNewListView()
                        .presentationDetents([/*.height(500)*/.fraction(0.65)])
                        .presentationDragIndicator(.automatic)

                }
            
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
                    TextField("Date of task", text: $date)
                        .padding()
                )
                .overlay (
                    RoundedRectangle(cornerRadius: 13)
                        .fill(.clear)
                        .stroke(colorManager.blueGradient, lineWidth: 5)
                )
            
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
                            TextField("Time of start of task", text: $startTime)
                                .padding()
                        )
                        .overlay (
                            RoundedRectangle(cornerRadius: 13)
                                .fill(.clear)
                                .stroke(colorManager.blueGradient, lineWidth: 5)
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
                            TextField("Time of end of task", text: $endTime)
                                .padding()
                        )
                        .overlay (
                            RoundedRectangle(cornerRadius: 13)
                                .fill(.clear)
                                .stroke(colorManager.blueGradient, lineWidth: 5)
                        )
                }
                .padding([.trailing, .bottom])
            }
//            Spacer()
            RoundedRectangle(cornerRadius: 40)
                .fill(colorManager.blueGradient)
                .frame(width: 374, height: 80)
                .shadow(color: .blue, radius: 10, y: 5)
                .overlay(
                    Button(action: {
                        
                    }, label: {
                        Text("Create New Task")
                            .foregroundStyle(.white)
                        
                            .font(.custom("Tektur-medium", size: 21))
                    })
                )
                .padding(.top)
            Spacer()
        }
        .padding(.top)
    }
//            )
    }
}

#Preview {
    CreateNewTaskView()
        .environmentObject(ColorManager())
}
