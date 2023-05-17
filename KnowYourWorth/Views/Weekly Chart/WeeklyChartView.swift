//
//  WeeklyChartView.swift
//  KnowYourWorth
//
//  Created by Kenny Albert on 5/15/23.
//

import SwiftUI
import CoreData

struct WeeklyChartView: View {
    @Environment(\.managedObjectContext) private var viewContext
    
    @FetchRequest(
        sortDescriptors: [NSSortDescriptor(keyPath: \Item.timestamp, ascending: true)],
        animation: .default)
    private var items: FetchedResults<Item>
    
    var body: some View {
        List {
            ForEach(items) { item in
                Text(item.itemTitle)
            }
        }
    }
}

struct WeeklyChartView_Previews: PreviewProvider {
    
    static var previews: some View {
        WeeklyChartView()
            .environment(\.managedObjectContext, DataController.preview.container.viewContext)
            
    }
}
