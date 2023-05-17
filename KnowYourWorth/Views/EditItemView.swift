//
//  EditItemView.swift
//  KnowYourWorth
//
//  Created by Kenny Albert on 5/12/23.
//

import SwiftUI
import CoreData

struct EditItemView: View {
    let item: Item
    
    @EnvironmentObject var dataController: DataController
    
    @State  var detail: String
    @State  var title: String
    @State  var rate: Double
    @State  var time: Double
    @State  var timestamp: Date
    
    private var earned: Double {
        time * rate
    }
    
    var body: some View {
        NavigationStack{
            Form {
                Section("Time Card Details"){
                    TextField("Time Card Title", text: $title)
                    TextField("Time Card Details", text: $detail)
                }
            }
            .navigationBarTitle(title)
        }
    }
}

struct EditItemView_Previews: PreviewProvider {
    static var previews: some View {
        
        EditItemView(item: Item.example, detail: "", title: "", rate: 15.5, time: 2.0, timestamp: Date())
            
    }
}
