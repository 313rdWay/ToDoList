//
//  TaskOverviewView.swift
//  ToDoList
//
//  Created by Davaughn Williams on 4/5/25.
//

import SwiftUI

struct TaskOverviewView: View {
    
    @EnvironmentObject var colorManager: ColorManager
    var body: some View {
        ZStack {
            colorManager.backgroundColor
                .ignoresSafeArea()
        
            VStack {
                Text("Task Name")
                
                Text("Complete homework and finish science project")
                    .foregroundStyle(colorManager.blueGradient)
                    .multilineTextAlignment(.center)
                
                Text("List")
                
                HStack {
                    Text("School")
                    
                    Image(systemName: "pencil.tip.crop.circle.fill")
                        .font(.system(size: 21))
                }
                .foregroundStyle(colorManager.blueGradient)
                
                Text("Date")
                
                Text("4/11/1999")
                    .foregroundStyle(colorManager.blueGradient)
                
                Text("Complete")
                    .font(.custom("Tektur-Medium", size: 35))
                    .foregroundStyle(.green)
                
                HStack {
                    VStack {
                        Text("Start Time")
                        
                        Text("8:00pm")
                            .foregroundStyle(colorManager.blueGradient)
                    }
                    
                    VStack {
                        Text("Start Time")
                        
                        Text("N/A")
                            .foregroundStyle(colorManager.blueGradient)
                    }
                    
                }
                
                HStack {
                    Spacer()
                    
                    Image(systemName: "slider.horizontal.2.square")
                        .font(.system(size: 35))
                }
                Spacer()

                .padding(.trailing)
            }
            
            
            .font(.custom("Tektur-Medium", size: 21))
        }
    }

    }
//}

#Preview {
    TaskOverviewView()
        .environmentObject(ColorManager())
}
