//
//  CreateNewListView.swift
//  ToDoList
//
//  Created by Davaughn Williams on 3/8/25.
//

import SwiftUI

struct CreateNewListView: View {

    @EnvironmentObject var colorManager: ColorManager
    @EnvironmentObject var vm: TaskViewModel
    var body: some View {
        ZStack {
            colorManager.backgroundColor
                .ignoresSafeArea()

            VStack {

                listNameCreateSection

                colorSelectionSection

                iconSelectionSection

                Spacer()
                
                createNewListButton
                
            }
            .padding(.top)

        }
    }
}

#Preview {
    CreateNewListView()
        .environmentObject(ColorManager())
        .environmentObject(
            TaskViewModel(
                taskName: "Test Name",
                listName: "Test List",
                date: .now,
                startTime: .now,
                endTime: .now,
                showCreateListScreen: false
            )
        )
}

extension CreateNewListView {

    private var listNameCreateSection: some View {
        VStack {
            HStack {
                Text("List Name")
                    .font(.custom("Tektur-medium", size: 21))
                    .padding(.leading)
                Spacer()
            }
            .padding(.top)
            RoundedRectangle(cornerRadius: 13)
                .fill(.gray)
                .frame(width: 362, height: 34)
                .overlay(
                    TextField("Name of your task", text: $vm.listName)
                        .padding()
                )
                .overlay(
                    RoundedRectangle(cornerRadius: 13)
                        .fill(.clear)
                        .stroke(colorManager.blueGradient, lineWidth: 5)
                )
        }
    }

    private var colorSelectionSection: some View {
        VStack {
            HStack {
                Text("Colors")
                    .font(.custom("Tektur-medium", size: 21))
                    .padding(.leading)
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
        }
    }

    private var iconSelectionSection: some View {
        VStack {
            HStack {
                Text("Icon")
                    .font(.custom("Tektur-medium", size: 21))
                    .padding(.leading)
                Spacer()
            }
            HStack(spacing: 2) {
                ForEach(0..<4) { index in
                    Button {

                    } label: {
                        Image(systemName: "graduationcap.circle.fill")
                            .foregroundStyle(colorManager.iconColor)
                            .font(.system(size: 48))
                    }
                }
                .padding(.leading, 20)
                Spacer()
            }
        }
    }
    
    private var createNewListButton: some View {
        RoundedRectangle(cornerRadius: 40)
            .fill(colorManager.blueGradient)
            .frame(width: 374, height: 80)
            .shadow(color: .blue, radius: 10, y: 5)
            .overlay(
                Button(
                    action: {

                    },
                    label: {
                        Text("Create New List")
                            .foregroundStyle(.white)
                            .font(.custom("Tektur-medium", size: 21))
                    }
                )
            )
    }
}
