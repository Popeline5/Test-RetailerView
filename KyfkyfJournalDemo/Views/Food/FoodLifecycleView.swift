//
//  FoodLifecycleView.swift
//  KyfkyfJournalDemo
//
//  Created by Juan Diosdado on 2026-09-01.
//

import SwiftUI

struct FoodLifecycleView: View {
    var body: some View {
        NavigationStack {
            List {
                Section("Production") {
                    Text("…")
                }
                
                Section("Processing") {
                    Text("…")
                }
                
                Section("Transportation") {
                    Text("…")
                }
                
                Section("Impact") {
                    Text("…")
                }
            }
            .background(.kyfkyfBackground)
            .font(.subheadline)
            .scrollContentBackground(.hidden)
        }
    }
}

#Preview {
    FoodLifecycleView()
}
