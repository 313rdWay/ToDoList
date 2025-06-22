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
                header
                ScrollView(showsIndicators: false) {
                    LazyVStack(spacing: 20) {
                        content
                    }
                    .frame(alignment: .leading)
                    .font(.custom("Tektur-medium", size: 21))
                }
                addTaskButton
//                    .sheet(item: $vm.activeSheet) { item in
//                        switch item {
//                        case .create: createSheet
//                        case .overview: overviewSheet
//                        }
//                    }
            }
        }
    }
}

#Preview {
    TaskHomeView()
        .environmentObject(ColorManager())
        .environmentObject(PreviewData.taskHomeViewModel)
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
                    ForEach(vm.allTask) { task in
                        TaskCardView(task: task)
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

//    private var createSheet: some View {
//        CreateNewTaskView(/*task: TaskModel(taskName: "Complete homework and finsh science project", listName: ListModel(listName: "Test List", icon: nil), isComplete: false)*/)
//            .presentationDetents([.fraction(0.65)])
//            .presentationDragIndicator(.automatic)
//            .presentationCornerRadius(50)
//
//    }
//
//    private var overviewSheet: some View {
//        TaskOverviewView()
//            .presentationDetents([.fraction(0.45)])
//            .presentationDragIndicator(.automatic)
//            .presentationCornerRadius(50)
//            .overlay(
//                RoundedRectangle(cornerRadius: 43)
//                    .stroke(.green, lineWidth: 10)
//                    .offset(y: 32)
//                    .frame(width: 390, height: 400)
//            )
//
//    }

}
