//
//  JournalEntryDetailView.swift
//  Daily Journal
//
//  Created by Purva Tandel on 4/21/25.
//

import SwiftUI

struct JournalEntryDetailView: View {
    
    let detailJournalEntry: JournalEntry
    
    
    var body: some View {
        ScrollView {
            
            
            VStack(alignment: .leading) {
                HStack {
                    Text(detailJournalEntry.date, style: .date)
                    Text("--")
                    Text(String(repeating: "⭐️" , count: Int(detailJournalEntry.rating)))
                    Spacer()
                    
                } .padding(.bottom)
                
                
                Text(detailJournalEntry.text)
            }
            .padding()
            Spacer()
        }
        .navigationTitle(detailJournalEntry.title)
    }
}

#Preview {
    NavigationStack {
        
        
        JournalEntryDetailView(detailJournalEntry: JournalEntry(title: "nice day", text: "i love this day", rating: 3, date: Date()))
    }}
