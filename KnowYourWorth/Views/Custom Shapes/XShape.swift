//
//  XShape.swift
//  KnowYourWorth
//
//  Created by Kenny Albert on 5/15/23.
//

import SwiftUI

struct XShape: View {
    
    @State var lineWidth: Double
    @State var color: Color
    
    struct MultiplyShape1: Shape {
        func path(in rect: CGRect) -> Path {
            var path = Path()
            
            path.move(to: CGPoint(x: rect.minX, y: rect.minY))
            path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
            
            return path
        }
    }

    struct MultiplyShape2: Shape{
        func path(in rect: CGRect) -> Path {
            var path = Path()
            
            path.move(to: CGPoint(x: rect.minX, y: rect.maxY))
            path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY))
            
            return path
        }
    }
    var body: some View {
        
        ZStack(alignment: .bottomLeading) {
            MultiplyShape1()
                .stroke(lineWidth: lineWidth)
            MultiplyShape2()
                .stroke(lineWidth: lineWidth)
        }
        .frame(width: 25, height: 30)
        .padding(.bottom)
        .foregroundColor(color)
    }
}

struct XShape_Previews: PreviewProvider {
    static var previews: some View {
        XShape(lineWidth: 4, color: Color.primary)
    }
}
