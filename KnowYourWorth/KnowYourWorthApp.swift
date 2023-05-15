//
//  KnowYourWorthApp.swift
//  KnowYourWorth
//
//  Created by Kenny Albert on 5/8/23.
//

import SwiftUI

@main
struct KnowYourWorthApp: App {
    let dataController = DataController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
