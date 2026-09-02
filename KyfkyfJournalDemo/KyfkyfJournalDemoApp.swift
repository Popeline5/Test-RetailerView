//
//  KyfkyfJournalDemoApp.swift
//  KyfkyfJournalDemo
//
//  Created by Juan Diosdado on 2026-08-26.
//

import SwiftData
import SwiftUI

@main
struct KyfkyfJournalDemoApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
//        .modelContainer(for: [Food.self, Item.self])
        .modelContainer(SampleData.shared.modelContainer)
    }
}
