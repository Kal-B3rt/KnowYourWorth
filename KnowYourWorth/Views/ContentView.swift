//
//  ContentView.swift
//  KnowYourWorth
//
//  Created by Kenny Albert on 5/8/23.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.managedObjectContext) private var viewContext
    @State var selectedTab: Tabs = .overview
    var body: some View {
        VStack(spacing: 0) {
            ZStack{
                if selectedTab == .overview {
                    EmptyView()
                }
                
                if selectedTab == .list {
                    ItemListView()
                }
            }
            TabBarView(selectedTab: $selectedTab)
        }
    }
}
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
