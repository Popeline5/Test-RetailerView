//
//  FoodView.swift
//  KyfkyfJournalDemo
//
//  Created by Juan Diosdado on 2026-09-01.
//

import SwiftData
import SwiftUI

struct FoodView: View {
    @Query(sort: \Food.name) private var foods: [Food]
    @Environment(\.modelContext) private var context
        
    @State private var selectedSubview: FoodProperty = .foodDetails
        
    var body: some View {
        NavigationSplitView {
            VStack {
                Picker("Select property", selection: $selectedSubview) {
                    ForEach(FoodProperty.allCases) { property in
                        Text(property.rawValue).tag(property)
                    }
                }
                .pickerStyle(.segmented)
                .padding(.horizontal)
                
                switch selectedSubview {
                    case .foodDetails:
                    FoodDetailsView()
                    case .foodComposition:
                    FoodCompositionView()
                    case .foodLifecycle:
                    FoodLifecycleView()
                }
            }
            .background(.kyfkyfBackground)
            .navigationTitle(foods[4].name)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button("Back", systemImage: "chevron.backward") {
                        // More to come
                        print("Clicked back()")
                    }
                }
                
                ToolbarItem {
                    Button("Share", systemImage: "square.and.arrow.up", action: share)
                }
                
                ToolbarItem(placement: .primaryAction) {
                    Menu("Select action", systemImage: "plus") {
                        Button("Add to journal", systemImage: "book.badge.plus", action: addFoodToJournal)
                        
                        Button("Add to wishlist", systemImage: "rectangle.stack.badge.plus", action: addFoodToWishlist)
                        
                        Divider()
                        
                        Button("Add to another journal", systemImage: "book.badge.plus", action: addFoodToAnotherJournal)
                        
                        Button("Allocate to another person", systemImage: "person", action: allocateFoodToAnotherPerson)
                    }
                }
            }
        } detail: {
            Text("Select a food")
                .navigationTitle("Food")
                .navigationBarTitleDisplayMode(.inline)
        }
    }
    
    private func addFoodToJournal() {
        // More to come
        print("Clicked addFoodToJournal()")
    }
    
    private func addFoodToWishlist() {
        // More to come
        print("Clicked addFoodToWishlist()")
    }
    
    private func addFoodToAnotherJournal() {
        // More to come
        print("Clicked addFoodToAnotherJournal()")
    }
    
    private func allocateFoodToAnotherPerson() {
        // More to come
        print("Clicked allocateFoodToAnotherPerson()")
    }
    
    private func share() {
        // More to come
        print("Clicked share()")
    }
}

#Preview("Sample Data") {
    FoodView()
        .modelContainer(SampleData.shared.modelContainer)
}

//#Preview("Empty List") {
//    FoodView()
//        .modelContainer(for: Food.self, inMemory: true)
//}
