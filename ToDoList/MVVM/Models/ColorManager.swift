//
//  ColorManager.swift
//  ToDoList
//
//  Created by Davaughn Williams on 4/3/25.
//

import SwiftUI

class ColorManager: ObservableObject {
    @Published var backgroundColor: LinearGradient = LinearGradient(colors: [Color("backgroundColorGradient1"), Color("backgroundColorGradient2")], startPoint: .center, endPoint: .zero)
    @Published var blueGradient: LinearGradient = LinearGradient(colors: [Color("blueGradientLight"), Color("blueGradientDark")], startPoint: .top, endPoint: .bottom)
    @Published var iconColor: Color = Color("iconColor")
}
