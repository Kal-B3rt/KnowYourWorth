//
//  OverviewView.swift
//  KnowYourWorth
//
//  Created by Kenny Albert on 5/15/23.
//

import SwiftUI

struct OverviewView: View {
    var body: some View {
        GeometryReader{ geo in
            VStack{
                ZStack{
                    Rectangle()
                        .foregroundColor(Color.secondarySystemGroupedBackground)
                        .cornerRadius(15)
                        .padding()
                        .frame(width: geo.size.width/1, height: geo.size.height/3)
                                         
                }
            }
        }
    }
}

struct OverviewView_Previews: PreviewProvider {
    static var previews: some View {
        OverviewView()
    }
}
