//
//  TaskHomeView.swift
//  ToDoList
//
//  Created by Davaughn Williams on 3/8/25.
//

import SwiftUI

struct TaskHomeView: View {

    @EnvironmentObject var colorManager: ColorManager
    @EnvironmentObject private var vm: TaskHomeViewModel

    var body: some View {
        ZStack {
            colorManager.backgroundColor
                .ignoresSafeArea()
            VStack {
                ScrollView(showsIndicators: false) {
                    LazyVStack(spacing: 20) {
                        header
                        content
                    }
                    .frame(alignment: .leading)
                    .font(.custom("Tektur-medium", size: 21))
                }
                addTaskButton
                    .sheet(item: $vm.activeSheet) { item in
                        switch item {
                        case .create: createSheet

                        case .overview: overviewSheet
                        }
                    }
            }
        }
    }
}

#Preview {
    TaskHomeView()
        .environmentObject(ColorManager())
        .environmentObject(TaskHomeViewModel())
        .environmentObject(
            TaskViewModel(
                taskName: "Test Name",
                listName: "Test List",
                date: "04/11/25",
                startTime: "4:00",
                endTime: "5:00",
                showCreateListScreen: false
            )
        )
}

extension TaskHomeView {

    private var header: some View {
        Text("Task")
            .foregroundStyle(colorManager.blueGradient)
            .font(.custom("Tektur-Bold", size: 36))
            .padding(.trailing)

    }

    private var sectionHeader: some View {
        HStack {
            Text("School")

            Image(systemName: "graduationcap.circle.fill")

            Spacer()
        }
        .foregroundStyle(colorManager.blueGradient)
        .frame(maxWidth: .infinity, alignment: .bottom)
        .padding(.leading)
    }

    private var content: some View {
        Section(header: sectionHeader) {
            Button {
                vm.activeSheet = .overview
            } label: {
                VStack {
                    ForEach(0..<3) { index in
                        TaskCardView()
                            .foregroundStyle(colorManager.iconColor)
                            .padding(.bottom, 10)
                    }
                }
            }
        }
    }

    private var addTaskButton: some View {
        Button {
            vm.activeSheet = .create
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
    }

    private var createSheet: some View {
        CreateNewTaskView()
            .presentationDetents([.fraction(0.65)])
            .presentationDragIndicator(.automatic)
            .presentationCornerRadius(50)

    }

    private var overviewSheet: some View {
        TaskOverviewView()
            .presentationDetents([.fraction(0.45)])
            .presentationDragIndicator(.automatic)
            .presentationCornerRadius(50)
            .overlay(
                RoundedRectangle(cornerRadius: 43)
                    .stroke(.green, lineWidth: 10)
                    .offset(y: 32)
                    .frame(width: 390, height: 400)
            )

    }
}
