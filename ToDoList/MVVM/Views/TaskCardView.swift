//
//  TaskCardView.swift
//  ToDoList
//
//  Created by Davaughn Williams on 3/7/25.
//

import SwiftUI

struct TaskCardView: View {
    
    @EnvironmentObject private var vm: TaskViewModel
    
    var body: some View {
        RoundedRectangle(cornerRadius: 40)
            .fill(Color("cardColor"))
            .shadow(color: Color("dropShadowColor"), radius: 10, x: 0, y: 5)
            .frame(width: 374, height: 80)
            .overlay(
                HStack {
                    VStack {
                        Text("4/11")
                            .font(.custom("Tektur-Regular", size: 14))
                            .padding(.leading)

                        Text("8:00pm")
                            .font(.custom("Tektur-Regular", size: 14))
                            .padding(.leading)
                    }
                    Rectangle()
                        .fill(Color.green)
                        .frame(width: 2, height: 50)
                        .shadow(color: Color.white, radius: 4, y: 2)

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
