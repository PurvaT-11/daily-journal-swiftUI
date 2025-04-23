//
//  Journalentryrowview.swift
//  Daily Journal
//
//  Created by Purva Tandel on 4/22/25.
//

import SwiftUI

struct Journalentryrowview: View {
    
    let rowJournalEntry: JournalEntry
    
    var body: some View {
        VStack(alignment: .leading) {
            
            
            HStack {
                
                Text(rowJournalEntry.title).bold()
                Text("-")
                Text(rowJournalEntry.text).lineLimit(1).foregroundStyle(.secondary)
            }
            .padding(.bottom, 7)
            
            HStack {
                Text(rowJournalEntry.date, style: .date)
                    .foregroundStyle(.secondary)
                Text(String(repeating: "⭐️" , count: Int(rowJournalEntry.rating)))
            }
            .font(.caption)
        }
        
    }
}

#Preview { List {
    Journalentryrowview(rowJournalEntry : JournalEntry(title: "nice day", text: "i love this day", rating: 3, date: Date()))
}}
