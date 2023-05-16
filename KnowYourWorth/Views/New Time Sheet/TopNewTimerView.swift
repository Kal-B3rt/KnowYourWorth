//
//  TopNewTimerView.swift
//  KnowYourWorth
//
//  Created by Kenny Albert on 5/15/23.
//

import SwiftUI

struct TopNewTimerView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 0){
            VStack(alignment: .trailing, spacing: 0){
                Text("0:00:00")
                    .font(Font.system(size:70))
                
                HStack(alignment: .bottom){
                    
                    XShape(lineWidth: 4, color: Color.primary)
                    
                    Spacer()
                    
                    Text("$15.00")
                        .font(Font.system(size:70))
                        .fontWeight(.ultraLight)
                }
                
                
                LineShape(lineWidth: 4, lineColor: Color.primary)
                
            }
            
        }
    }
}

struct TopNewTimerView_Previews: PreviewProvider {
    static var previews: some View {
        TopNewTimerView()
    }
}
