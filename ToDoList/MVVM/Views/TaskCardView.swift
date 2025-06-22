//
//  TaskCardView.swift
//  ToDoList
//
//  Created by Davaughn Williams on 3/7/25.
//

import SwiftUI

struct TaskCardView: View {
    
    let task: TaskModel
    @State private var textHeight: CGFloat = 80
    
    var body: some View {
        RoundedRectangle(cornerRadius: 40)
            .fill(Color("cardColor"))
            .shadow(color: Color("dropShadowColor"), radius: 10, x: 0, y: 5)
            .frame(width: 374, height: max(80, min(textHeight + 50, 150)))
        
            .overlay(
                HStack {
                    // Time & Date
                    VStack {
                        Text(task.date.formattedDate)
                        Text(task.startTime.formattedTime)
                    }
                    .font(.custom("Tektur-Regular", size: 14))
                    .padding(.leading)
                    
                    // Divider
                    Rectangle()
                        .fill(task.isComplete ? Color.green : Color.red)
                        .frame(width: 2)
                        .frame(minHeight: 50, maxHeight: 120)
                        .frame(width: 2, height: max(50, min(textHeight + 30, 120)))

                    Spacer()

                    // Task Content
                    Text(task.taskName)
                        .font(.custom("Tektur-Regular", size: 18))
                        .multilineTextAlignment(.leading)
                        .frame(maxHeight: 120)
                        .lineLimit(6)
                        .fixedSize(horizontal: false, vertical: true)
                        .background(
                            GeometryReader { geo in
                                Color.clear
                                    .onAppear {
                                        textHeight = geo.size.height
                                    }
                                    .onChange(of: task.taskName) { oldValue, newValue in
                                        textHeight = geo.size.height
                                    }
                            }
                        )

                    Spacer()
                }
            )
    }
}

#Preview {
    
    VStack {        
        TaskCardView(task: PreviewData.sampleTask)
        
        TaskCardView(task: PreviewData.completedTask)
    }
}
