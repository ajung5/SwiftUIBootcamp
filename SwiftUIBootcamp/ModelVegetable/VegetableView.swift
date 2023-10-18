//
//  VegetableView.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 18/10/23.
//


// ini adalah main view dari "Vegetable Model"


import SwiftUI

struct VegetableView: View {
    
    // Tanpa ditambahkan properti wrapper @ObservObject, data tidak akan ditampilkan
    // karena view tidak diberitahu oleh class untuk mengupdate view nya
    
    var veggieManager: VeggieManager = VeggieManager()
    
    var body: some View {
        NavigationStack {
            List {
                // melakukan perulangan pada variabel "veggieArray" yang beertipe data "VegetableModel"
                ForEach(veggieManager.sayurArrray) { item in
                    HStack {
                        Text("\(item.count)")
                            .foregroundStyle(.red)
                        
                        Text(item.name)
                            .font(.headline)
                            .bold()
                    }
                }
                .onDelete(perform: veggieManager.deleteVeggie)
            }
            .listStyle(GroupedListStyle())
            .navigationTitle("Veggie List")
            .onAppear{
                veggieManager.getVeggies()
            }
        }
    }
}

#Preview {
    VegetableView()
}
