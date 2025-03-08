//
//  CreateNewListView.swift
//  ToDoList
//
//  Created by Davaughn Williams on 3/8/25.
//

import SwiftUI

struct CreateNewListView: View {
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
                    Spacer()
                    HStack {
                        Text("List Name")
                            .font(.custom("Tektur-medium", size: 21))
                            .padding(.leading, 30)
                        Spacer()
                    }
                    RoundedRectangle(cornerRadius: 13)
                        .fill(.gray)
                        .frame(width: 362, height: 34)
                        .overlay(
                            TextField("Name of your task", text: $listName)
                        .padding()
                    )
                    HStack {
                        Text("Colors")
                            .font(.custom("Tektur-medium", size: 21))
                            .padding(.leading, 30)
                        Spacer()
                    }
                    HStack(spacing: 14) {
                        ForEach(0..<colors.count, id: \.self) { index in
                            Button {
                        
                            } label: {
                                Circle()
                                    .fill(colors[index])
                                    .frame(width: 33, height: 33)
                            }
                        }
                    }
                    
                    HStack {
                        Text("Icon")
                            .font(.custom("Tektur-medium", size: 21))
                            .padding(.leading, 30)
                        Spacer()
                    }
                    HStack(spacing: 2) {
                        ForEach(0..<4) { index in
                            Button {
                                
                            } label: {
                            Image(systemName: "graduationcap.circle.fill")
                                    .foregroundStyle(.black)
                                    .font(.system(size: 48))
                        }
                    }
                        .padding(.leading, 20)
                        Spacer()
                    }
                    
                    Spacer()
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
    CreateNewListView()
}
