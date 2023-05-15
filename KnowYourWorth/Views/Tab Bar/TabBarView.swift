//
//  TabBarView.swift
//  KnowYourWorth
//
//  Created by Kenny Albert on 5/14/23.
//

import SwiftUI

enum Tabs: Int{
    case overview = 0
    case list = 1
}

struct TabBarView: View {
    
    @Binding var selectedTab: Tabs
    var body: some View {
        HStack {
            Button {
                //Overview with charts
                selectedTab = .overview
            } label: {
                TabBarButton(buttonText: "Overview", imageName: "chart.bar", isActive: selectedTab == .overview)
            }
            .tint(.secondary)
            
            Button {
                //Overview with charts
            } label: {
                VStack(alignment: .center, spacing: 4){
                    Image(systemName: "plus.square.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 32, height: 32)
                    Text("New Sheet")
                        .font(.system(size: 12))
                }
            }
            .tint(.primary)
            
            Button {
                //List of submitted timesheets
                selectedTab = .list
            } label: {
                TabBarButton(buttonText: "Completed", imageName: "list.dash", isActive: selectedTab == .list)
            }
            .tint(.secondary)
            
        }
        .frame(height: 82)
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView(selectedTab: .constant(.overview))
    }
}
