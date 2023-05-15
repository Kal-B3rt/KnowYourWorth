//
//  LineShape.swift
//  KnowYourWorth
//
//  Created by Kenny Albert on 5/15/23.
//

import SwiftUI

struct LineShape: View {
    @State var lineWidth: Double
    @State var lineColor: Color
    struct NewLine: Shape {
        func path(in rect: CGRect) -> Path {
            var path = Path()
            
            path.move(to: CGPoint(x: rect.minX, y: rect.minY))
            path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY))
            
            return path
        }
    }
    
    var body: some View {
        NewLine()
            .stroke(lineWidth: lineWidth)
            .foregroundColor(lineColor)
    }
}

struct LineShape_Previews: PreviewProvider {
    static var previews: some View {
        LineShape(lineWidth: 4, lineColor: Color.primary)
    }
}
