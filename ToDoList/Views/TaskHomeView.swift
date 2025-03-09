//
//  TaskHomeView.swift
//  ToDoList
//
//  Created by Davaughn Williams on 3/8/25.
//

import SwiftUI

struct TaskHomeView: View {
    
    @State var showCreateScreen: Bool = false
    
    var body: some View {
        ScrollView(showsIndicators: false) {
        LazyVStack(spacing: 20) {
            Text("Task")
                .font(.custom("Tektur-Bold", size: 36))
            
            Section("School") {
                ForEach(0..<3) { index in
                    TaskCardView()
                }
            }
            Section("Work") {
                ForEach(0..<3) { index in
                    TaskCardView()
                }
            }
            
            Section("Exercise") {
                ForEach(0..<3) { index in
                    TaskCardView()
                }
            }
            
            Section("Travel") {
                ForEach(0..<3) { index in
                    TaskCardView()
                }
            }


        }
        .font(.custom("Tektur-medium", size: 21 ))
    }
        Button {
            showCreateScreen.toggle()
        } label: {
            Circle()
                .fill(.black)
                .frame(width: 55, height: 55)
                .overlay(
                    Image(systemName: "plus")
                        .foregroundStyle(.white)
                        .font(.system(size: 36))
                )
        }
        .sheet(isPresented: $showCreateScreen) {
            CreateNewTaskView()
        }
    }
}

#Preview {
    TaskHomeView()
}
