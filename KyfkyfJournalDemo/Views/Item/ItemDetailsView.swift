//
//  ItemDetailsView.swift
//  KyfkyfJournalDemo
//
//  Created by Juan Diosdado on 2026-09-02.
//

import SwiftUI

struct ItemDetailsView: View {
    let firstColumnWidth: CGFloat = 94
    
    var body: some View {
        NavigationStack {
            List {
                NavigationLink(destination: EmptyView()) {
                    HStack {
                        Text("Item")
                            .frame(width: firstColumnWidth, alignment: .leading)
                        Divider()
                        Text(Item.sampleData[5].food.name)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                }
                
                NavigationLink(destination: EmptyView()) {
                    HStack {
                        Text("Measurement")
                            .frame(width: firstColumnWidth, alignment: .leading)
                        Divider()
                        Text("\(Item.sampleData[5].measurementQuantity.formatted()) \(Item.sampleData[5].measurementUnit)")
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                }
                
//                NavigationLink(destination: EmptyView()) {
//                    HStack {
//                        Text("Item")
//                            .frame(width: firstColumnWidth, alignment: .leading)
//                        Divider()
//                        Text(CatalogItem.sampleData[5].item.food.name)
//                            .frame(maxWidth: .infinity, alignment: .leading)
//                    }
//                }
//
//                NavigationLink(destination: EmptyView()) {
//                    HStack {
//                        Text("Measurement")
//                            .frame(width: firstColumnWidth, alignment: .leading)
//                        Divider()
//                        Text(CatalogItem.sampleData[5].item.measurement.formatted())
//                            .frame(maxWidth: .infinity, alignment: .leading)
//                    }
//                }
//
//                NavigationLink(destination: EmptyView()) {
//                    HStack {
//                        Text("Price")
//                            .frame(width: firstColumnWidth, alignment: .leading)
//                        Divider()
//                        Text(CatalogItem.sampleData[5].price.value.formatted(.currency(code: CatalogItem.sampleData[5].price.currencyCode)))
//                            .frame(maxWidth: .infinity, alignment: .leading)
//                    }
//                }
//
//                NavigationLink(destination: EmptyView()) {
//                    HStack {
//                        Text("Available")
//                            .frame(width: firstColumnWidth, alignment: .leading)
//                        Divider()
//                        Text(CatalogItem.sampleData[5].availableQuanity.formatted())
//                            .frame(maxWidth: .infinity, alignment: .leading)
//                    }
//                }
                
                Button("Show more") {
                    // More to come
                    print("Clicked Details.showMore()")
                }
                .frame(maxWidth: .infinity, alignment: .center)
            }
            .background(.kyfkyfBackground)
            .font(.subheadline)
            .scrollContentBackground(.hidden)
        }
    }
}

#Preview {
    ItemDetailsView()
}
