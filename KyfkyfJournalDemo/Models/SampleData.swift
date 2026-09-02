//
//  SampleData.swift
//  KyfkyfJournalDemo
//
//  Created by Juan Diosdado on 2026-09-01.
//

import Foundation
import SwiftData

class SampleData {
    static let shared = SampleData()
    
    let modelContainer: ModelContainer
    
    var context: ModelContext {
        modelContainer.mainContext
    }
    
//    var food: Food {
//        Food.sampleData.first!
//    }
    
    var item: Item {
        Item.sampleData.first!
    }
    
    private init() {
        let schema = Schema([
//            Food.self,
            Item.self
        ])
        
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: true)
        
        do {
            modelContainer = try ModelContainer(for: schema, configurations: [modelConfiguration])
            
            insertSampleData()
            
            try context.save()
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }
    
    private func insertSampleData() {
//        for food in Food.sampleData {
//            context.insert(food)
//        }
        
        for item in Item.sampleData {
            context.insert(item)
        }
        
//        Item.sampleData[0].food = Food.sampleData[0]
//        Item.sampleData[1].food = Food.sampleData[1]
//        Item.sampleData[2].food = Food.sampleData[2]
//        Item.sampleData[3].food = Food.sampleData[3]
//        Item.sampleData[4].food = Food.sampleData[4]
    }
}
