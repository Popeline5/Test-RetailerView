//
//  RetailerView.swift
//  KyfkyfJournalDemo
//
//  Created by Pauline de Mortain on 09/09/2026.
//

import SwiftUI

struct RetailerView: View {
    @State private var location: String = "Boutique Beaumarchais"
    @State private var wishedItems: [String] = ["Espresso Éthiopien", "Cold Brew", "Latte", "Kombucha", "Café au lait", "Café noir", "Café au lait"]
    @State private var triedItems: [String] = ["Espresso Éthiopien", "Cold Brew", "Latte", "Kombucha", "Café au lait", "Café noir", "Café au lait"]
    
    private var locationOptions: [String] = ["Boutique Beaumarchais", "Boutique Rennes", "Boutique Capucines", "Boutique Blancs Manteaux", "Boutique Rambuteau"]
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 32) {
                //Header
                HStack() {
                    Image(.logoTerresDeCafé)
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
                        Picker("Select location", selection: $location) {
                            ForEach(locationOptions, id: \.self) { location in
                                Text("\(location)")
                            }
                        }
                        .foregroundStyle(.caramel)
                        .pickerStyle(.menu)
                        .buttonSizing(.flexible)
                        .buttonStyle(.glass)
                        //.foregroundStyle(.caramel) -> How to put caramel in buttonStyle(.glass)
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
                    
                    //                    HStack() {
                    //                        Image(systemName: /*"medal.star"*/"trophy")
                    //                            .frame(width: 22, height: 22)
                    //                        Text("Outstanding Achievement Award 2024...")
                    //                    }
                    //                    HStack() {
                    //                        Image(systemName: "checkmark.seal")
                    //                            .frame(width: 22, height: 22)
                    //                        Text("Q-Grader, Agriculture Biologique...")
                    //                    }
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                
                //ScrollView
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
