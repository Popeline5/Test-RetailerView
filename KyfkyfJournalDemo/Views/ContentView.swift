//
//  ContentView.swift
//  KyfkyfJournalDemo
//
//  Created by Juan Diosdado on 2026-08-26.
//

import SwiftData
import SwiftUI

struct ContentView: View {
    @Environment(\.colorScheme) private var colorScheme
    
    @State private var searchText = ""
    
    var body: some View {
        TabView {
            Tab("Journal", systemImage: "book") {
//                ExperienceListView()
//                JournalView()
                Text("JournalView")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(.kyfkyfBackground)
            }
            
            //            Tab("People", systemImage: "person.2") {
            ////                PersonListView()
            //                Text("PeopleView")
            //            }
            
            Tab("Companions", systemImage: "person.2") {
//                CompanionListView()
                Text("CompanionsView")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(.kyfkyfBackground)
            }
            
            Tab("Wishlists", systemImage: "rectangle.stack") {
//                WishlistListView()
                Text("WishlistsView")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(.kyfkyfBackground)
            }
            
            Tab(role: .search) {
                NavigationStack {
//                    SearchView()
                    Text("SearchView")
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .background(.kyfkyfBackground)
                }
            }
        }
        .searchable(text: $searchText)
        .tabViewSearchActivation(.searchTabSelection)
        .tint(colorScheme == .dark ? .indigo : .caramel)
//        .searchToolbarBehavior(.minimize)
//        .toolbar {
//            ToolbarItem(placement: .bottomBar) {
//                Button("Search", systemImage: "magnifyingglass") {
//
//                }
//            }
//            DefaultToolbarItem(kind: .search, placement: .bottomBar)
//            ToolbarSpacer(.flexible, placement: .bottomBar)
//        }
    }
}

#Preview("Sample Data") {
    ContentView()
        .modelContainer(SampleData.shared.modelContainer)
}

#Preview("Empty Lists") {
    ContentView()
        .modelContainer(for: [Food.self, Item.self], inMemory: true)
}
