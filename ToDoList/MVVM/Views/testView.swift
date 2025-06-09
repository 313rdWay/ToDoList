//
//  testView.swift
//  ToDoList
//
//  Created by Davaughn Williams on 4/18/25.
//

import SwiftUI

struct testView: View {
    
    @EnvironmentObject var colorManager: ColorManager
    @State private var taskName: String = ""
    @State private var listName: String = ""
    @State private var date: String = ""
    @State private var startTime: String = ""
    @State private var endTime: String = ""
    
    @State var showCreateListScreen: Bool = false
    
    var body: some View {
        
        Spacer()
        ZStack {
            Rectangle()
                .fill(colorManager.backgroundColor)
                .frame(width: 393, height: /*371*/500)
                .clipShape(UnevenRoundedRectangle(
                    topLeadingRadius: 50,
                    bottomLeadingRadius: 0,
                    bottomTrailingRadius: 0,
                    topTrailingRadius: 50
                ))
                .overlay(
                    RoundedRectangle(cornerRadius: 50)
                        .stroke(colorManager.blueGradient, lineWidth: 10)
                        .padding(5) // keeps it inside safe area
                        .frame(height: /*471*/600)
                        .offset(y: 41)
                        .mask(
                            VStack(spacing: 0) {
                                Rectangle() // top part (visible)
                                Rectangle().frame(height: 50).opacity(0) // bottom gap (invisible)
                            }
                        )
                )
            HStack {
                Spacer()
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
                                //                                        showCreateListScreen.toggle()
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
                            .presentationCornerRadius(50)
                            .overlay(
                                RoundedRectangle(cornerRadius: 43)
                                    .stroke(.green, lineWidth: 10)
                                    .offset(y: 32)
                                    .frame(width: 390, height: 400)
                            )
                        
                        
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
                //            Spacer()
            }
            Spacer()
        }
        }
    }
}

#Preview {
    testView()
        .environmentObject(ColorManager())
}
