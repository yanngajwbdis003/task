//
//  taskApp.swift
//  task
//
//  Created by Monica Yang on 2023-12-27.
//
import FirebaseCore
import SwiftUI

@main
struct taskApp: App {
    let persistenceController = PersistenceController.shared
    
    init() {
        FirebaseApp.configure()
    }

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
