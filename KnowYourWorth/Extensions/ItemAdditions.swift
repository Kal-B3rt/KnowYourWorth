//
//  ItemAdditions.swift
//  KnowYourWorth
//
//  Created by Kenny Albert on 5/8/23.
//

import Foundation

extension Item{
    
    enum SortOrder {
        case optimized, title, creationDate
    }
    
    var itemTitle: String {
        title ?? "New Item"
    }

    var itemCreationDate: Date {
        timestamp ?? Date()
        
    }
    
    var itemDetail: String {
        details ?? "Details..."
    }
    
    
    static var example: Item {
        let controller = DataController(inMemory: true)
        let viewContext = controller.container.viewContext
        
        let item = Item(context: viewContext)
        item.title = "Example Item"
        item.details = "This is an default example text."
        item.time = 6.5
        item.rate = 17.50
        item.timestamp = Date()
   

        return item
    }
    
    
    
    
    
}
