//
//  EditItemView.swift
//  KnowYourWorth
//
//  Created by Kenny Albert on 5/8/23.
//

import SwiftUI

struct EditItemView: View {
    @ObservedObject var item: Item
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct EditItemView_Previews: PreviewProvider {
    static var previews: some View {
        EditItemView(item: .example)
    }
}
