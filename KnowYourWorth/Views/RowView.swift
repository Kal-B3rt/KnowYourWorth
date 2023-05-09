//
//  RowView.swift
//  KnowYourWorth
//
//  Created by Kenny Albert on 5/8/23.
//

import SwiftUI

struct RowView: View {
    @ObservedObject var item: Item
        
    var body: some View {
        NavigationLink(destination: EditItemView(item: item)){
            HStack{
                VStack(alignment: .leading){
                    Text(item.itemTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.primary)
                    Text(item.itemCreationDate, formatter: itemFormatter)
                        .foregroundColor(.secondary)
                }
            }
        }
    }
    
    let itemFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        //formatter.timeStyle = .medium
        return formatter
    }()
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(item: .example)
    }
}
