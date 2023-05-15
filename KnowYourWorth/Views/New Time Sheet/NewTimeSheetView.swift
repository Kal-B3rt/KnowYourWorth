//
//  NewTimeSheetView.swift
//  KnowYourWorth
//
//  Created by Kenny Albert on 5/15/23.
//

import SwiftUI

struct NewTimeSheetView: View {
    var body: some View {
        
        VStack(alignment: .leading){
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            XShape(lineWidth: 4, color: Color.primary)
            LineShape(lineWidth: 4, lineColor: Color.primary)
        }
        .padding()
    }
}

struct NewTimeSheetView_Previews: PreviewProvider {
    static var previews: some View {
        NewTimeSheetView()
    }
}
