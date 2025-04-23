//
//  ContentView.swift
//  Daily Journal
//
//  Created by Purva Tandel on 4/21/25.
//

import SwiftUI
import SwiftData

struct JournalEntryView: View {
    
    @Environment(\.modelContext) private var modelContext
    @Query(sort: \JournalEntry.date, order: .reverse) private var journalEntries: [JournalEntry]
    @State var showCreateView = false
    
    
    var body: some View {
        NavigationStack {
            
            
            List(journalEntries) { listedJournalEntry in
                NavigationLink(destination: EditJournalEntryView(editingJournalEntry: listedJournalEntry)) {
                    Journalentryrowview(rowJournalEntry: listedJournalEntry)
                }
                
                
            }
            .navigationTitle(" \(journalEntries.count) Daily Journal")
            .toolbar {
                
                Button(action: {
                    let newJournalEntry = JournalEntry(title: "New Entry", text: "Swift Data is awesome!!!", rating: 5, date: Date())
                    modelContext.insert(newJournalEntry)
                    showCreateView = true
                }) {
                    Label("Add Item", systemImage: "plus")
                    
                }
            }
            .sheet(isPresented: $showCreateView) {
                createJournalEntryView()
                
            }
        }
    }
    
}


#Preview {
    
    JournalEntryView()
        .modelContainer(for: JournalEntry.self, inMemory: true)
}
