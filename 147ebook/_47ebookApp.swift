//
//  _47ebookApp.swift
//  147ebook
//
//  Created by User20 on 2020/10/16.
//

import SwiftUI

@main
struct _47ebookApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
