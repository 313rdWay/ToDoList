//
//  OpenRoundedRectangle.swift
//  ToDoList
//
//  Created by Davaughn Williams on 4/16/25.
//

//import SwiftUI
//
//
//struct OpenRoundedRectangle: Shape {
//    func path(in rect: CGRect) -> Path {
//        var path = Path()
//        let roundedRect = CGRect(x: 0, y: 0, width: rect.width, height: rect.height)
//        let cornerRadius = CGFloat(20)
//        let path1 = UIBezierPath(roundedRect: roundedRect, cornerRadius: cornerRadius)
//        path = Path(path1.cgPath)
//        
//        path.move(to: CGPoint(x: rect.midX, y: rect.maxY))
//        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
//        path.addLine(to: CGPoint(x: rect.midX - 20, y: rect.maxY))
//        path.addLine(to: CGPoint(x: rect.midX, y: rect.maxY))
//        
//        return path
//    }
//}
//
//RoundedRectangle(cornerRadius: 20)
//    .fill(Color.blue)
//    .clipShape(OpenRoundedRectangle())
//
//#Preview {
//    OpenRoundedRectangle()
//        .environmentObject(ColorManager())
//}
