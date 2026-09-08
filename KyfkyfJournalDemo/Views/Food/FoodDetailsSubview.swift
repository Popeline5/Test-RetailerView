//
//  FoodDetailsSubview.swift
//  KyfkyfJournalDemo
//
//  Created by Juan Diosdado on 2026-09-01.
//

import SwiftUI

struct FoodDetailsSubview: View {
    let firstColumnWidth: CGFloat = 75
    
    var body: some View {
        NavigationStack {
            List {
//                NavigationLink(destination: EmptyView()) {
//                    HStack {
//                        Text("Producer")
//                            .frame(width: 96, alignment: .leading)
//                        Text("Samuel Fouilliard, Aux Pâturages")
//                            .frame(maxWidth: .infinity, alignment: .leading)
//                    }
//                }
//                
//                NavigationLink(destination: EmptyView()) {
//                    HStack {
//                        Text("Origin")
//                            .frame(width: 96, alignment: .leading)
//                        Text("Aisne, France")
//                            .frame(maxWidth: .infinity, alignment: .leading)
//                    }
//                }
//                
//                NavigationLink(destination: EmptyView()) {
//                    HStack {
//                        Text("Production method")
//                            .frame(width: 96, alignment: .leading)
//                        Text("Grass-fed")
//                            .frame(maxWidth: .infinity, alignment: .leading)
//                    }
//                }
                
                NavigationLink(destination: EmptyView()) {
                    HStack {
                        Text("Farm")
                            .frame(width: firstColumnWidth, alignment: .leading)
                        Divider()
                        Text("Aux Pâturages")
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                }
                
                NavigationLink(destination: EmptyView()) {
                    HStack {
                        Text("Farmer")
                            .frame(width: firstColumnWidth, alignment: .leading)
                        Divider()
                        Text("Samuel Fouilliard")
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                }
                
                NavigationLink(destination: EmptyView()) {
                    HStack {
                        Text("Region")
                            .frame(width: firstColumnWidth, alignment: .leading)
                        Divider()
                        Text("Aisne")
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                }
                
                NavigationLink(destination: EmptyView()) {
                    HStack {
                        Text("Country")
                            .frame(width: firstColumnWidth, alignment: .leading)
                        Divider()
                        Text("France")
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                }
                
                NavigationLink(destination: EmptyView()) {
                    HStack {
                        Text("Animal")
                            .frame(width: firstColumnWidth, alignment: .leading)
                        Divider()
                        Text("Beef")
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                }
                
                NavigationLink(destination: EmptyView()) {
                    HStack {
                        Text("Race")
                            .frame(width: firstColumnWidth, alignment: .leading)
                        Divider()
                        Text("Salangus")
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                }
                
                NavigationLink(destination: EmptyView()) {
                    HStack {
                        Text("Feed")
                            .frame(width: firstColumnWidth, alignment: .leading)
                        Divider()
                        Text("Grass")
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                }
                
                NavigationLink(destination: EmptyView()) {
                    HStack {
                        Text("Maturation")
                            .frame(width: firstColumnWidth, alignment: .leading)
                        Divider()
                        Text("21 days")
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                }
                
                Button("Show more") {
                    // More to come
                    print("Clicked Details.showMore()")
                }
                .foregroundStyle(.accent)
                .frame(maxWidth: .infinity, alignment: .center)
            }
            .background(.kyfkyfBackground)
            .font(.subheadline)
            .scrollContentBackground(.hidden)
        }
    }
}

#Preview {
    FoodDetailsSubview()
}
