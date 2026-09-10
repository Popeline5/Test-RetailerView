//
//  RetailerView.swift
//  KyfkyfJournalDemo
//
//  Created by Pauline de Mortain on 09/09/2026.
//

import SwiftUI

struct RetailerView: View {
    @State private var selectedLocation: String = "Boutique Beaumarchais"
    @State private var selectedCatalog: String = "2026-09-01"
    
    @State private var catalogOptions: [String] = ["2026-09-01", "2026-08-01", "2026-07-01"]
    private var locationOptions: [String] = ["Boutique Beaumarchais", "Boutique Rennes", "Boutique Capucines", "Boutique Blancs Manteaux", "Boutique Rambuteau"]
    
    @State private var wishedItems: [String] = ["Espresso Éthiopien", "Cold Brew", "Latte", "Kombucha", "Café au lait", "Café noir", "Café au lait"]
    @State private var triedItems: [String] = ["Espresso Éthiopien", "Cold Brew", "Latte", "Kombucha", "Café au lait", "Café noir", "Café au lait"]
    
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 32) {
                //Header
                HStack() {
                    Image(.logoTerresDeCafé)
                        .cornerRadius(12)
                    Text("Terres de Café")
                        .font(.title).fontWeight(.semibold)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                
                //Location details
                VStack(alignment: .leading, spacing: 8) {
                    //Picker
                    HStack{
                        Image(systemName: "storefront")
                            .frame(width: 22, height: 22)
                        
                        //I changed Picker for a menu because I didn't have control on the label's color
                        Menu {
                            ForEach(locationOptions, id: \.self) { selection in
                                Button(selection) {
                                    selectedLocation = selection
                                }
                                
                            }
                        } label: {
                            HStack {
                                Text(selectedLocation)
                                Image(systemName: "chevron.up.chevron.down")
                                
                            }
                            .foregroundStyle(.caramel)
                        }
                        .buttonStyle(.glass)
                    }
                    
                    HStack() {
                        Image(systemName: "mappin")
                            .frame(width: 22, height: 22)
                        Text("23 Boulevard Beaumarchais, 75003 Paris")
                    }
                    
                    HStack() {
                        Image(systemName: "figure.walk")
                            .frame(width: 22, height: 22)
                        Text("300 meters")
                    }
                    
                    HStack() {
                        Image(systemName: "clock")
                            .frame(width: 22, height: 22)
                        Text("Open - Closes 19:00")
                    }
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                
                //Wished Items
                VStack(alignment: .leading) {
                    Text("Wished Items")
                        .font(.headline)
                    
                    ScrollView(.horizontal) {
                        HStack() {
                            ForEach(wishedItems, id: \.self) { item in
                                Button(item) {
                                    // Action
                                }
                                .buttonSizing(.flexible)
                                .buttonStyle(.borderedProminent)
                                .buttonBorderShape(.roundedRectangle(radius: 8))
                                .foregroundStyle(.cherryLight)
                                .tint(Color.cherryLight.opacity(0.08))
                            }
                        }
                    }
                }
                
                //Tried Items
                VStack(alignment: .leading) {
                    Text("Tried Items")
                        .font(.headline)
                    
                    ScrollView(.horizontal) {
                        HStack() {
                            ForEach(triedItems, id: \.self) { item in
                                Button(item) {
                                    // Action
                                }
                                .buttonSizing(.flexible)
                                .buttonStyle(.borderedProminent)
                                .buttonBorderShape(.roundedRectangle(radius: 8))
                                .foregroundStyle(.cherryLight)
                                .tint(Color.cherryLight.opacity(0.08))
                            }
                        }
                    }
                }
                
                //Divider()
                
                VStack(alignment: .leading) {
                    List() {
                        
                        Section(header:
                                    HStack() {
                            Text("Catalog")
                                .font(.headline)
                                .foregroundStyle(.black)
                            
                            Spacer()
                            Menu {
                                ForEach(catalogOptions, id: \.self) { selection in
                                    Button(selection) {
                                        selectedCatalog = selection
                                    }
                                    
                                }
                            } label: {
                                HStack {
                                    Text(selectedCatalog)
                                    Image(systemName: "chevron.up.chevron.down")
                                }
                                .foregroundStyle(.caramel)
                            }
                            .buttonStyle(.glass)
                        }) {
                            HStack {
                                Text("Espresso Simple")
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                Image(systemName: "plus")
                            }
                            HStack {
                                Text("Espresso Double")
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                Image(systemName: "plus")
                            }
                            
                            HStack {
                                Text("Cold Brew")
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                Image(systemName: "plus")
                            }
                            HStack {
                                Text("Affogato")
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                Image(systemName: "plus")
                            }
                            HStack {
                                Text("Affogato")
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                Image(systemName: "plus")
                            }
                        }
                    }
                    //.listStyle(.insetGrouped)
                    //.listStyle(.plain)
                    .scrollContentBackground(.hidden)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                
                
                Spacer()
                
            }
            .padding(.horizontal)
            .background(.kyfkyfBackground)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button("Back", systemImage: "chevron.backward") {
                        // More to come
                        print("Clicked back()")
                    }
                }
                
                ToolbarItem {
                    Menu("Select action", systemImage: "square.and.arrow.up") {
                        Button("Share location", systemImage: "storefront", action: shareLocation)
                        
                        //Divider()
                        
                        Button("Share retailer", systemImage: "storefront", action: shareRetailer)
                        
                        Divider()
                        
                        Button("Create event", systemImage: "calendar", action: shareRetailer)
                    }
                }
                
                ToolbarItem(placement: .primaryAction) {
                    Menu("Select action", systemImage: "plus") {
                        Button("Add location to wishlist", systemImage: "rectangle.stack", action: addLocationToWishlist)
                        
                        Button("Add retailer to wishlist", systemImage: "rectangle.stack", action: addRetailerToWishlist)
                    }
                }
            }
        }
    }
    
    private func shareLocation() {
        // More to come
        print("Clicked shareLocation()")
    }
    
    private func shareRetailer() {
        // More to come
        print("Clicked shareRetailer()")
    }
    
    private func addLocationToWishlist() {
        // More to come
        print("Clicked addLocationToWishlist()")
    }
    
    private func addRetailerToWishlist() {
        // More to come
        print("Clicked addRetailerToWishlist()")
    }
}

#Preview {
    RetailerView()
}
