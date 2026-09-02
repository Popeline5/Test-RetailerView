//
//  FoodCompositionView.swift
//  KyfkyfJournalDemo
//
//  Created by Juan Diosdado on 2026-09-01.
//

import SwiftUI

struct FoodCompositionView: View {
    var body: some View {
        NavigationStack {
            List {
                Section {
                    HStack {
                        Text("Allergens")
                            .fontWeight(.semibold)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Button("Show more", systemImage: "info.circle") {
                            // More to come
                            print("Clicked Allergens.info()")
                        }
                        .foregroundStyle(.secondary)
                        .labelStyle(.iconOnly)
                    }
                    
                    LazyVGrid(columns: [GridItem(), GridItem(), GridItem()]) {
                        Button("Egg") {
                            // Action
                        }
                        
                        Button("Gluten") {
                            // Action
                        }
                        
                        Button("Lactose") {
                            // Action
                        }
                        
                        Button("Nightshade") {
                            // Action
                        }
                    }
                    .buttonSizing(.flexible)
                    .buttonStyle(.borderedProminent)
                    .buttonBorderShape(.roundedRectangle(radius: 8))
                    .foregroundStyle(.allergen)
                    .tint(Color.allergen.opacity(0.08))
                }
                
                Section {
                    HStack {
                        Text("Additives")
                            .fontWeight(.semibold)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Button("Show more", systemImage: "info.circle") {
                            // More to come
                            print("Clicked Allergens.info()")
                        }
                        .foregroundStyle(.secondary)
                        .labelStyle(.iconOnly)
                    }
                    
                    LazyVGrid(columns: [GridItem(), GridItem(), GridItem()]) {
                        Button("Carob flour") {
                            // Action
                        }
                        
                        Button("Soy lecithin") {
                            // Action
                        }
                        
                        Button("E132") {
                            // Action
                        }
                    }
                    .buttonSizing(.flexible)
                    .buttonStyle(.borderedProminent)
                    .buttonBorderShape(.roundedRectangle(radius: 8))
                    .foregroundStyle(.additive)
                    .tint(Color.additive.opacity(0.08))
                }
                
                Section {
                    HStack {
                        Text("Contaminants")
                            .fontWeight(.semibold)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Button("Show more", systemImage: "info.circle") {
                            // More to come
                            print("Clicked Allergens.info()")
                        }
                        .foregroundStyle(.secondary)
                        .labelStyle(.iconOnly)
                    }
                    
                    LazyVGrid(columns: [GridItem(), GridItem(), GridItem()]) {
                        Button("Cadmium") {
                            // Action
                        }
                        
                        Button("PFAS") {
                            // Action
                        }
                    }
                    .buttonSizing(.flexible)
                    .buttonStyle(.borderedProminent)
                    .buttonBorderShape(.roundedRectangle(radius: 8))
                    .foregroundStyle(.contaminant)
                    .tint(Color.contaminant.opacity(0.08))
                }
                
                Section {
                    HStack {
                        Text("Ingredients")
                            .fontWeight(.semibold)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Text("3 of 6")
                            .foregroundStyle(.secondary)
                    }
                    
                    HStack {
                        Text("Farine de blé russello")
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Divider()
                        Text("Sicilia, Italia")
                            .frame(width: 93, alignment: .leading)
                        Divider()
                        Text("40%")
                            .frame(width: 39, alignment: .leading)
                    }
                    
                    HStack {
                        Text("Sauce de tomates")
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Divider()
                        Text("Lucca, Italia")
                            .frame(width: 93, alignment: .leading)
                        Divider()
                        Text("20%")
                            .frame(width: 39, alignment: .leading)
                    }
                    
                    HStack {
                        Text("Mozzarella fior di latte")
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Divider()
                        Text("Salerno, Italia")
                            .frame(width: 93, alignment: .leading)
                        Divider()
                        Text("20%")
                            .frame(width: 39, alignment: .leading)
                    }
                    
                    Button("Show more") {
                        // More to come
                        print("Clicked Ingredients.showMore()")
                    }
                    .foregroundStyle(.caramel)
                    .frame(maxWidth: .infinity, alignment: .center)
                }
                
                Section {
                    HStack {
                        Text("Nutrition")
                            .fontWeight(.semibold)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Text("4 of 12")
                            .foregroundStyle(.secondary)
                    }
                    
                    HStack {
                        Text("Energy")
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Divider()
                        Text("168 kcal")
                            .frame(width: 57, alignment: .trailing)
                    }
                    
                    HStack {
                        Text("Fat")
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Divider()
                        Text("10.7 g")
                            .frame(width: 57, alignment: .trailing)
                    }
                    
                    HStack {
                        Text("    ")
                        Text("Saturated")
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Divider()
                        Text("2 g")
                            .frame(width: 57, alignment: .trailing)
                    }
                    
                    HStack {
                        Text("    ")
                        Text("Trans")
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Divider()
                        Text("0 g")
                            .frame(width: 57, alignment: .trailing)
                    }
                    
                    HStack {
                        Text("    ")
                        Text("Polyunsaturated")
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Divider()
                        Text("0 g")
                            .frame(width: 57, alignment: .trailing)
                    }
                    
                    HStack {
                        Text("    ")
                        Text("Monounsaturated")
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Divider()
                        Text("1 g")
                            .frame(width: 57, alignment: .trailing)
                    }
                    
                    HStack {
                        Text("Carbohydrates")
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Divider()
                        Text("< 0.1 g")
                            .frame(width: 57, alignment: .trailing)
                    }
                    
                    HStack {
                        Text("Protein")
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Divider()
                        Text("25.5 g")
                            .frame(width: 57, alignment: .trailing)
                    }
                    
                    Button("Show more") {
                        // More to come
                        print("Clicked Nutrition.showMore()")
                    }
                    .foregroundStyle(.caramel)
                    .frame(maxWidth: .infinity, alignment: .center)
                }
            }
            .background(.kyfkyfBackground)
            .font(.subheadline)
            .scrollContentBackground(.hidden)
        }
    }
    
    private func openAllergen() {
        //
    }
}

#Preview {
    FoodCompositionView()
}
