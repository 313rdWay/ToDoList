//
//  TaskOverviewView.swift
//  ToDoList
//
//  Created by Davaughn Williams on 4/5/25.
//

import SwiftUI

struct TaskOverviewView: View {

    @EnvironmentObject var colorManager: ColorManager

    @State var showEditTaskView = false
    var body: some View {
        ZStack {
            colorManager.backgroundColor
                .ignoresSafeArea()

            VStack {
                taskNameSection

                listNameSection

                dateSection

                taskStatusSection

                HStack {
                    startAndEndTimeSection
                }

                editButton
            }
            .font(.custom("Tektur-Medium", size: 21))
        }
    }

}

#Preview {
    TaskOverviewView()
        .environmentObject(ColorManager())
}

extension TaskOverviewView {

    private var taskNameSection: some View {
        VStack {
            Text("Task Name")

            Text("Complete homework and finish science project")
                .foregroundStyle(colorManager.blueGradient)
                .multilineTextAlignment(.center)
        }
    }

    private var listNameSection: some View {
        VStack {
            Text("List")

            HStack {
                Text("School")

                Image(systemName: "pencil.tip.crop.circle.fill")
                    .font(.system(size: 21))
            }
            .foregroundStyle(colorManager.blueGradient)
        }
    }

    private var dateSection: some View {
        VStack {
            Text("Date")

            Text("4/11/1999")
                .foregroundStyle(colorManager.blueGradient)
        }
    }

    private var taskStatusSection: some View {
        Text("Complete")
            .font(.custom("Tektur-Medium", size: 35))
            .foregroundStyle(.green)
    }

    private var startAndEndTimeSection: some View {
        HStack {
            Spacer()

            VStack {
                Text("Start Time")

                Text("8:00pm")
                    .foregroundStyle(colorManager.blueGradient)
            }

            Spacer()

            VStack {
                Text("Start Time")

                Text("N/A")
                    .foregroundStyle(colorManager.blueGradient)
            }

            Spacer()
        }
    }

    private var editButton: some View {
        HStack {
            Spacer()
            Button {
                showEditTaskView.toggle()
            } label: {
                Image(systemName: "slider.horizontal.2.square")
                    .font(.system(size: 35))
                    .foregroundStyle(colorManager.iconColor)
                    .padding(.trailing)
            }
        }
        .offset(y: -20)
        .padding(.trailing)
    }
}
