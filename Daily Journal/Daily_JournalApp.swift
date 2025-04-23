//
//  Daily_JournalApp.swift
//  Daily Journal
//
//  Created by Purva Tandel on 4/21/25.
//

import SwiftUI
import SwiftData

@main
struct Daily_JournalApp: App {
    
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            JournalEntry.self
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()
    
    var body: some Scene {
        WindowGroup {
            JournalEntryView()
        }
        .modelContainer(sharedModelContainer)
    }
}
