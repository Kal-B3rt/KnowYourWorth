//
//  TabBarButton.swift
//  KnowYourWorth
//
//  Created by Kenny Albert on 5/14/23.
//

import SwiftUI

struct TabBarButton: View {
    
    var buttonText: String
    var imageName: String
    var isActive: Bool
    
    var body: some View {
        GeometryReader { geo in
            
            if isActive {
                Rectangle()
                    .foregroundColor(.primary)
                    .frame(width: geo.size.width/2, height: 3)
                    .padding(.leading, geo.size.width/4)
            }
            
            VStack(alignment: .center, spacing: 4){
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 24, height: 24)
                Text(buttonText)
                    .font(.system(size: 12))
            }
            .frame(width: geo.size.width, height: geo.size.height)
        }
    }
}

struct TabBarButton_Previews: PreviewProvider {
    static var previews: some View {
        TabBarButton(buttonText: "Example", imageName: "list.dash", isActive: true)
    }
}
