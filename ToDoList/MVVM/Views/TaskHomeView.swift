//
//  TaskHomeView.swift
//  ToDoList
//
//  Created by Davaughn Williams on 3/8/25.
//

import SwiftUI

struct TaskHomeView: View {
    
    @EnvironmentObject var colorManager: ColorManager
    @State var showCreateScreen: Bool = false
    
    var body: some View {
        
        ZStack {
            colorManager.backgroundColor
                .ignoresSafeArea()
        VStack {
            
            ScrollView(showsIndicators: false) {
                LazyVStack(spacing: 20) {
                    Text("Task")
                        .foregroundStyle(colorManager.blueGradient)
                        .font(.custom("Tektur-Bold", size: 36))
                        .padding(.trailing)
                    
                    Section(header:
                                HStack {
                        Text("School")
                        
                        Image(systemName: "graduationcap.circle.fill")
                        
                        Spacer()
                    }
                        .foregroundStyle(colorManager.blueGradient)
                        .frame(maxWidth: .infinity, alignment: .bottom)
                        .padding(.leading)
                    ) {
                        ForEach(0..<3) { index in
                            TaskCardView()
                        }
                    }
                    Section(header:
                                HStack {
                        Text("Work")
                        
                        Image(systemName: "pencil.tip.crop.circle.fill")
                        
                        Spacer()
                    }
                            .foregroundStyle(colorManager.blueGradient)
                            .frame(maxWidth: .infinity, alignment: .bottom)
                            .padding(.leading)
        
                    ) {
                        ForEach(0..<3) { index in
                            TaskCardView()
                        }
                    }
                    
                    Section(header:
                                HStack {
                        Text("Exercise")
                        
                        Image(systemName: "figure.run.circle.fill")
                        
                        Spacer()
                    }
                        .foregroundStyle(colorManager.blueGradient)
                        .frame(maxWidth: .infinity, alignment: .bottom)
                        .padding(.leading)
                            
                    ) {
                        ForEach(0..<3) { index in
                            TaskCardView()
                        }
                    }
                    
                    Section(header:
                                HStack {
                        Text("Travel")
                        
                        Image(systemName: "briefcase.circle.fill")
                            .foregroundStyle(colorManager.blueGradient)
                        
                        Spacer()
                    }
                        .foregroundStyle(colorManager.blueGradient)
                        .frame(maxWidth: .infinity, alignment: .bottom)
                        .padding(.leading)
                    ) {
                        ForEach(0..<3) { index in
                            TaskCardView()
                        }
                    }
                    
                    
                }
                .frame(alignment: .leading)
                //                .foregroundStyle(LinearGradient(colors: [Color("blueGradientLight"), Color("blueGradientDark")], startPoint: .top, endPoint: .bottom))
                .font(.custom("Tektur-medium", size: 21 ))
            }
            Button {
                showCreateScreen.toggle()
            } label: {
                Circle()
                    .fill(.white)
                    .frame(width: 55, height: 55)
                    .shadow(color: Color("dropShadowColor"), radius: 10, y: 5)
                    .overlay(
                        Image(systemName: "plus")
                            .foregroundStyle(colorManager.blueGradient)
                            .font(.system(size: 36))
                    )
            }
            .sheet(isPresented: $showCreateScreen) {
                CreateNewTaskView()
                    .presentationDetents([/*.height(500)*/.fraction(0.65)])
                    .presentationDragIndicator(.automatic)
            }
        }
    }
    }
}

#Preview {
    TaskHomeView()
        .environmentObject(ColorManager())
}
