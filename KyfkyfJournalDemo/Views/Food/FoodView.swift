//
//  FoodView.swift
//  KyfkyfJournalDemo
//
//  Created by Juan Diosdado on 2026-09-01.
//

import SwiftData
import SwiftUI

struct FoodView: View {
//    @Query(sort: \Food.name) private var foods: [Food]
//    @Environment(\.modelContext) private var context
    
    @State private var selectedSubview: FoodSubview = .foodDetails
    
    var body: some View {
        NavigationStack {
            VStack {
                Picker("Select property", selection: $selectedSubview) {
                    ForEach(FoodSubview.allCases) { subview in
                        Text(subview.rawValue).tag(subview)
                    }
                }
                .pickerStyle(.segmented)
                .padding(.horizontal)
                
                switch selectedSubview {
                case .foodDetails:
                    FoodDetailsSubview()
                case .foodComposition:
                    FoodCompositionSubview()
                case .foodLifecycle:
                    FoodLifecycleSubview()
                }
            }
            .background(.kyfkyfBackground)
            .navigationTitle(Item.sampleData[5].food.name)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button("Back", systemImage: "chevron.backward") {
                        // More to come
                        print("Clicked back()")
                    }
                }
                
                ToolbarItem {
                    Button("Share", systemImage: "square.and.arrow.up", action: shareFood)
                }
                
                ToolbarItem(placement: .primaryAction) {
                    Menu("Select action", systemImage: "plus") {
                        Button("Add to journal", systemImage: "book", action: addFoodToJournal)
                        
                        Button("Add to wishlist", systemImage: "rectangle.stack", action: addFoodToWishlist)
                        
//                        Divider()
//                        
//                        Button("Add to another journal", systemImage: "book", action: addFoodToAnotherJournal)
//                        
//                        Divider()
//                        
//                        Button("Allocate to another person", systemImage: "person", action: allocateFoodToAnotherPerson)
                    }
                }
            }
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
    
    private func shareFood() {
        // More to come
        print("Clicked shareFood()")
    }
}

#Preview {
    FoodView()
}

//#Preview("Sample Data") {
//    FoodView()
//        .modelContainer(SampleData.shared.modelContainer)
//}

//#Preview("Empty List") {
//    FoodView()
//        .modelContainer(for: Food.self, inMemory: true)
//}
