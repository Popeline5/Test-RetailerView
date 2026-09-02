//
//  Food.swift
//  KyfkyfJournalDemo
//
//  Created by Juan Diosdado on 2026-09-01.
//

import Foundation
import SwiftData

@Model
class Food/*: Codable, Identifiable*/ {
//    var id: UUID    // ArweaveBase64URL ???
    var name: String
//    var details: FoodDetails
//    var composition: FoodComposition
//    var lifecycle: FoodLifecycle
    
    init(name: String) {
        self.name = name
    }
    
    static let sampleData: [Food] = [
        Food(name: "Blueberry"),
        Food(name: "Coconut"),
        Food(name: "Pork"),
        Food(name: "Risotto"),
        Food(name: "Tarte Tatin")
    ]
}

enum FoodProperty: String, CaseIterable, Identifiable {
    case foodDetails = "Details"
    case foodComposition = "Composition"
    case foodLifecycle = "Lifecycle"
    
    var id: String { self.rawValue }
}

//enum FoodAction: String, CaseIterable, Identifiable {
//    case addFoodToJournal = "Add to journal"
//    case addFoodToWishlist = "Add to wishlist"
//    case addFoodToAnotherJournal = "Add to another journal"
//    case allocateFoodToAnotherPerson = "Allocate to another person"
//    
//    var id: String { self.rawValue }
//}
