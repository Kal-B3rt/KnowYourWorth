//
//  DataController.swift
//  KnowYourWorth
//
//  Created by Kenny Albert on 5/8/23.
//

import CoreData
import Foundation

class DataController: ObservableObject {
    static let shared = DataController()

    static var preview: DataController = {
        let result = DataController(inMemory: true)
        let viewContext = result.container.viewContext
        for i in 0..<10 {
            let newItem = Item(context: viewContext)
            let randomHours = [1.0,1.5,2.0,2.5,3.0,3.5,4.0,4.5,5.0,5.5,6.0,6.5]
            newItem.timestamp = Date()
            newItem.time = randomHours.randomElement() ?? 3.0
            newItem.rate = Double.random(in: 15...25).rounded()
            newItem.title = "Entry \(i)"
            newItem.details = "Example Details"
            newItem.id = UUID()
            
            
        }
        do {
            try viewContext.save()
        } catch {
            // Replace this implementation with code to handle the error appropriately.
            // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
            let nsError = error as NSError
            fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
        }
        return result
    }()

    let container: NSPersistentContainer

    init(inMemory: Bool = false) {
        container = NSPersistentContainer(name: "KnowYourWorth")
        if inMemory {
            container.persistentStoreDescriptions.first!.url = URL(fileURLWithPath: "/dev/null")
        }
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.

                /*
                 Typical reasons for an error here include:
                 * The parent directory does not exist, cannot be created, or disallows writing.
                 * The persistent store is not accessible, due to permissions or data protection when the device is locked.
                 * The device is out of space.
                 * The store could not be migrated to the current model version.
                 Check the error message to determine what the actual problem was.
                 */
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        container.viewContext.automaticallyMergesChangesFromParent = true
    }
}
