//
//  EditItemView.swift
//  KnowYourWorth
//
//  Created by Kenny Albert on 5/12/23.
//

import SwiftUI

struct EditItemView: View {
    @ObservedObject var item: Item
    var body: some View {
        NavigationStack{
            Text(item.itemTitle)
        }
    }
}

struct EditItemView_Previews: PreviewProvider {
    static var previews: some View {
        EditItemView(item: Item.example)
    }
}
