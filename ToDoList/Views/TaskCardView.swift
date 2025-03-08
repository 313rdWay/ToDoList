//
//  TaskCardView.swift
//  ToDoList
//
//  Created by Davaughn Williams on 3/7/25.
//

import SwiftUI

struct TaskCardView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 40)
            .fill(.white)
            .shadow(radius: 5, x: 5, y: 10)
            .frame(width: 374, height: 80)
            .overlay(
                HStack {
                    Text("8:00pm")
                        .font(.custom("Tektur-Regular", size: 14))
                        .padding(.leading)
                    
                    Divider()
                        .frame(width: 2, height: 50) // Thickness of the line
                        .background(Color.black) // Line color
                    Spacer()
                    
                    Text("Complete homework and finsh science project")
                        .font(.custom("Tektur-Regular", size: 18))
                    Spacer()
                }
            )
        
    }
}

#Preview {
    TaskCardView()
}
