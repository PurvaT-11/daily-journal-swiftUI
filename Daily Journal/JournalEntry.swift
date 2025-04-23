//
//  JournalEntry.swift
//  Daily Journal
//
//  Created by Purva Tandel on 4/21/25.
//
import SwiftData
import Foundation

@Model
final class JournalEntry {
    
    var title: String = ""
    var text: String = ""
    var rating: Double = 1.0
    var date: Date = Date()
    
    init(title: String, text: String, rating: Double, date: Date) {
        self.title = title
        self.text = text
        self.rating = rating
        self.date = date
    }
}




//let journalEntries: [JournalEntry] = [JournalEntry(title: "nice day", text: "i love this day this day a lot and i can not imagine any better day than this, found 0 errors while building this and i think i love swift ui a lot, i mean atp i should try solving leetcode in this", rating: 3, date: Date()),
//JournalEntry(title: "nicer day", text: "i loved this day a lot and i can not imagine any better day than this, found 0 errors while building this and i think i love swift ui a lot, i mean atp i should try solving leetcode in this", rating: 3, date: Date()),
//JournalEntry(title: "nicest day", text: "i love this day endthis day a lot and i can not imagine any better day than this, found 0 errors while building this and i think i love swift ui a lot, i mean atp i should try solving leetcode in this", rating: 3, date: Date())]

