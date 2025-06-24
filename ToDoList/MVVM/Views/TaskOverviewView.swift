//
//  TaskOverviewView.swift
//  ToDoList
//
//  Created by Davaughn Williams on 4/5/25.
//

import SwiftUI

struct TaskOverviewView: View {

    let task: TaskModel
    @EnvironmentObject var homeVM: TaskHomeViewModel
    @EnvironmentObject var colorManager: ColorManager

    var body: some View {
        ZStack {
            colorManager.backgroundColor
                .ignoresSafeArea()

            VStack {
                taskNameSection

                taskStatusSection
                
                dueDateAndTimeSection
            }
            .font(.custom("Tektur-Medium", size: 21))
        }
    }

}

#Preview {
    TaskOverviewView(task: PreviewData.sampleTask)
        .environmentObject(ColorManager())
        .environmentObject(TaskHomeViewModel())
}

extension TaskOverviewView {

    private var taskNameSection: some View {
        VStack {
            Text("Task Name")
            Text(task.taskName)
                .foregroundStyle(colorManager.blueGradient)
                .multilineTextAlignment(.center)
        }
    }

    private var taskStatusSection: some View {
        VStack {
            Text("Complete")
                .font(.custom("Tektur-Medium", size: 35))
                .foregroundStyle(.green)
        }
    }

    private var dueDateAndTimeSection: some View {
        HStack {
            
            VStack(alignment: .center) {
                Text("Date")
                Text(task.dueDate.formattedDate2)
                    .foregroundStyle(colorManager.blueGradient)
            }
            .frame(maxWidth: .infinity)

            Spacer()

            VStack(alignment: .center) {
                Text("Start Time")
                Text(task.dueTime.formattedTime)
                    .foregroundStyle(colorManager.blueGradient)
            }
            .frame(maxWidth: .infinity)
        }
        .padding(.horizontal)
    }

}
