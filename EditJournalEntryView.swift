//
//  EditJournalEntryView.swift
//  Daily Journal
//
//  Created by Purva Tandel on 4/22/25.
//

import SwiftUI

struct EditJournalEntryView: View {
    
    @Environment(\.modelContext) private var modelContext
    @Environment(\.dismiss) var dismiss
    
    @State var editingJournalEntry: JournalEntry
    @State var editMode = false
    var body: some View {
        if editMode {
            Form {
                TextField("Title", text: $editingJournalEntry.title)
                DatePicker("Date", selection: $editingJournalEntry.date, displayedComponents: .date)
                Text(String(repeating: "⭐️" , count: Int(editingJournalEntry.rating)))
                Slider(value: $editingJournalEntry.rating, in: 1...5, step: 1)
                TextEditor(text: $editingJournalEntry.text)
                
            }
            .navigationTitle("Edit Journal Entry")
                .toolbar {
                    Button("Delete") {
                        modelContext.delete(editingJournalEntry)
                        dismiss()
                    }
                    .foregroundColor(.red)
                    
                    Button("Done") {
                        editMode = false
                    }
                    .bold()
                }
        } else {

        JournalEntryDetailView(detailJournalEntry: editingJournalEntry)
                .toolbar {
                    Button("edit") {
                        editMode = true
                        
                    }
                }
        }
    }
}

#Preview {
    NavigationStack {
        
        
        EditJournalEntryView(editingJournalEntry: JournalEntry(title: "nice day", text: "i love this day this day a lot and i can not imagine any better day than this, found 0 errors while building this and i think i love swift ui a lot, i mean atp i should try solving leetcode in this", rating: 3, date: Date()))
    }}
