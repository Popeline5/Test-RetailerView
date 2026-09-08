//
//  Item.swift
//  KyfkyfJournalDemo
//
//  Created by Juan Diosdado on 2026-09-01.
//

import Foundation
import SwiftData

// TODO: Solve error "Class property within Persisted Struct/Enum is not supported: NSUnitMass"
//@Model
//class Item {
////    var id: UUID = UUID()
//    var food: Food
//    var measurement: Measurement<UnitMass>
//    
//    init(food: Food, measurement: Measurement<UnitMass>) {
//        self.food = food
//        self.measurement = measurement
//    }
//    
//    static let sampleData: [Item] = [
//        Item(food: Food(name: "Blueberry"), measurement: Measurement(value: 80, unit: .grams)),
//        Item(food: Food(name: "Coconut Water"), measurement: Measurement(value: 40, unit: .grams)),
//        Item(food: Food(name: "Double Espresso"), measurement: Measurement(value: 50, unit: .grams)),
//        Item(food: Food(name: "Pork Belly"), measurement: Measurement(value: 300, unit: .grams)),
//        Item(food: Food(name: "Risotto"), measurement: Measurement(value: 250, unit: .grams)),
//        Item(food: Food(name: "Tarte Tatin"), measurement: Measurement(value: 100, unit: .grams))
//    ]
//}

@Model
class Item {
//    var id: UUID = UUID()
    var food: Food
    var measurementQuantity: Double
    var measurementUnit: String
    
    init(food: Food, measurementQuantity: Double, measurementUnit: String) {
        self.food = food
        self.measurementQuantity = measurementQuantity
        self.measurementUnit = measurementUnit
    }
    
    static let sampleData: [Item] = [
        Item(food: Food(name: "Blueberry"), measurementQuantity: 80, measurementUnit: "grams"),
        Item(food: Food(name: "Coconut Water"), measurementQuantity: 40, measurementUnit: "grams"),
        Item(food: Food(name: "Double Espresso"), measurementQuantity: 50, measurementUnit: "grams"),
        Item(food: Food(name: "Pork Belly"), measurementQuantity: 300, measurementUnit: "grams"),
        Item(food: Food(name: "Risotto"), measurementQuantity: 250, measurementUnit: "grams"),
        Item(food: Food(name: "Tarte Tatin"), measurementQuantity: 100, measurementUnit: "grams")
    ]
}

// Could also be called AvailableItem or InventoryItem
@Model
class CatalogItem {
//    var id: UUID = UUID()
    var item: Item
    var availableQuanity: UInt
    var price: Price
//    var section: Catalog.Section
    
    init(item: Item, availableQuanity: UInt, price: Price/*, section: Catalog.Section*/) {
        self.item = item
        self.availableQuanity = availableQuanity
        self.price = price
//        self.section = section
    }
    
//    static let sampleData: [CatalogItem] = [
//        CatalogItem(item: Item(food: Food(name: "Blueberry"), measurement: Measurement(value: 80, unit: .grams)), availableQuanity: 20, price: Price(value: 4, currencyCode: "EUR")),
//        CatalogItem(item: Item(food: Food(name: "Coconut Water"), measurement: Measurement(value: 40, unit: .grams)), availableQuanity: 5, price: Price(value: 2, currencyCode: "EUR")),
//        CatalogItem(item: Item(food: Food(name: "Double Espresso"), measurement: Measurement(value: 50, unit: .grams)), availableQuanity: 45, price: Price(value: 5, currencyCode: "EUR")),
//        CatalogItem(item: Item(food: Food(name: "Pork Belly"), measurement: Measurement(value: 300, unit: .grams)), availableQuanity: 3, price: Price(value: 12, currencyCode: "EUR")),
//        CatalogItem(item: Item(food: Food(name: "Risotto"), measurement: Measurement(value: 250, unit: .grams)), availableQuanity: 7, price: Price(value: 8, currencyCode: "EUR")),
//        CatalogItem(item: Item(food: Food(name: "Tarte Tatin"), measurement: Measurement(value: 100, unit: .grams)), availableQuanity: 3, price: Price(value: 6, currencyCode: "EUR"))
//    ]
}

@Model
class AcquiredItem {
//    var id: UUID = UUID()
    var item: CatalogItem
    var acquiredQuantity: UInt
    var acquisitionDate: Date
//    var acquisitionLocation: Location
//    var paidPrice: Price
//    var retailer: Retailer
    
    init(item: CatalogItem, acquiredQuantity: UInt, acquisitionDate: Date) {
        self.item = item
        self.acquiredQuantity = acquiredQuantity
        self.acquisitionDate = acquisitionDate
    }
}

@Model
final class Price {
    var value: Decimal
    var currencyCode: String
    
    init(value: Decimal, currencyCode: String) {
        self.value = value
        self.currencyCode = currencyCode
    }
    
    var currency: Locale.Currency {
        Locale.Currency(currencyCode)
    }
}
