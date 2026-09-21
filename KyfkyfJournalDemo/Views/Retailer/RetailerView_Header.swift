//
//  RetailerView_Header.swift
//  KyfkyfJournalDemo
//
//  Created by Pauline de Mortain on 21/09/2026.
//

import SwiftUI

struct RetailerView_Header: View {
    @State private var selectedLocation: String = "Boutique Beaumarchais"
    private var locationOptions: [String] = ["Boutique Beaumarchais", "Boutique Rennes", "Boutique Capucines", "Boutique Blancs Manteaux", "Boutique Rambuteau"]

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
//                    //Picker
//                    HStack{
//                        Image(systemName: "storefront")
//                            .frame(width: 22, height: 22)
//                        
//                        //I changed Picker for a menu because I didn't have control on the label's color
//                        Menu {
//                            ForEach(locationOptions, id: \.self) { selection in
//                                Button(selection) {
//                                    selectedLocation = selection
//                                }
//                                
//                            }
//                        } label: {
//                            HStack {
//                                Text(selectedLocation)
//                                Image(systemName: "chevron.up.chevron.down")
//                                
//                            }
//                            .foregroundStyle(.caramel)
//                        }
//                        .buttonStyle(.glass)
//                    }
                    
                    VStack(spacing: 40) {
                        //Version 1
                        
                        VStack(alignment: .leading) {
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
                        
                        //Version 2
                        VStack(alignment: .leading) {
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
                                    .fontWeight(.semibold)
                                }
                                //.buttonStyle(.glass)
                            }
                            ScrollView(.vertical) {
                                VStack(alignment: .leading) {
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
                                    
                                    HStack() {
                                        Image(systemName: "clock")
                                            .frame(width: 22, height: 22)
                                        Text("Open - Closes 19:00")
                                    }
                                    HStack() {
                                        Image(systemName: "clock")
                                            .frame(width: 22, height: 22)
                                        Text("Open - Closes 19:00")
                                    }
                                }
                                //.border(Color.purple, width: 4)
                            }
                            .frame(height: 80)
                            //.border(Color.blue, width: 4)
                        }
                        
                        //Version 3
                        VStack(alignment: .leading) {
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
                            ScrollView(.vertical) {
                                VStack(alignment: .leading) {
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
                                    
                                    HStack() {
                                        Image(systemName: "clock")
                                            .frame(width: 22, height: 22)
                                        Text("Open - Closes 19:00")
                                    }
                                    
                                    HStack() {
                                        Image(systemName: "clock")
                                            .frame(width: 22, height: 22)
                                        Text("Open - Closes 19:00")
                                    }
                                }
                                //.border(Color.purple, width: 4)
                                .frame(width: .infinity)
                            }
                            .frame(width: .infinity, height: 80)
                            //.border(Color.blue, width: 4)
                        }
                        .frame(width: .infinity, height: .infinity, alignment: .leading)
                        .padding(8)
                        .background(.white.opacity(0.8))
                        .cornerRadius(8)
                        //.border(Color.pink, width: 4)
                    }
                    //.border(Color.black, width: 4)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                //.border(Color.blue, width: 4)
                Spacer()
            }
            .padding()
            .background(.kyfkyfBackground)
            //.border(Color.black, width: 4)
        }
    }
}

#Preview {
    RetailerView_Header()
}
