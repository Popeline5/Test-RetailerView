//
//  Item.swift
//  KyfkyfJournalDemo
//
//  Created by Juan Diosdado on 2026-09-01.
//

import Foundation
import SwiftData

@Model
class Item {
//    var id: UUID = UUID()
    var food: Food
    var measurement: String
//    var measurement: Measurement<UnitMass>    // (value: 10, unit: .grams)
    var multiples: UInt
//    var multiples: PositiveNumber
//    var price: Price?
    
//    var name: String
    
//    init(name: String) {
//        self.name = name
//    }
    
//    init(food: Food, measurement: Measurement<UnitMass>, multiples: UInt) {
//        self.food = food
//        self.measurement = measurement
//        self.multiples = multiples
//    }
    
    init(food: Food, measurement: String, multiples: UInt) {
        self.food = food
        self.measurement = measurement
        self.multiples = multiples
    }
    
//    static let sampleData = [
//        Item(food: Food(name: "Blueberry"), measurement: Measurement<UnitMass>(value: 80, unit: .grams), multiples: 2),
//        Item(food: Food(name: "Coconut"), measurement: Measurement<UnitMass>(value: 40, unit: .grams), multiples: 3),
//        Item(food: Food(name: "Pork"), measurement: Measurement<UnitMass>(value: 300, unit: .grams), multiples: 2),
//        Item(food: Food(name: "Risotto"), measurement: Measurement<UnitMass>(value: 250, unit: .grams), multiples: 1),
//        Item(food: Food(name: "Tarte Tatin"), measurement: Measurement<UnitMass>(value: 100, unit: .grams), multiples: 2)
//    ]
    
    static let sampleData: [Item] = [
        Item(food: Food(name: "Blueberry"), measurement: "80 grams", multiples: 2),
        Item(food: Food(name: "Coconut"), measurement: "40 grams", multiples: 3),
        Item(food: Food(name: "Pork"), measurement: "300 grams", multiples: 2),
        Item(food: Food(name: "Risotto"), measurement: "250 grams", multiples: 1),
        Item(food: Food(name: "Tarte Tatin"), measurement: "100 grams", multiples: 2)
    ]
}

@Model
class Item2 {
    var measurement: Measurement<UnitMass>
    
    init(measurement: Measurement<UnitMass>) {
        self.measurement = measurement
    }
    
    
    static let sampleData: [Item2] = [
        Item2(measurement: Measurement(value: 10, unit: .grams))
    ]
}
