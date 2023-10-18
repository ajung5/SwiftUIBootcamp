//
//  VegetableView.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 18/10/23.
//


// ini adalah main view dari "Vegetable Model"


import SwiftUI

struct VegetableView: View {
    
    @State var veggieArray: [VegetableModel] = []
    
    var body: some View {
        NavigationStack {
            List {
                // melakukan perulangan pada variabel "veggieArray" yang beertipe data "VegetableModel"
                ForEach(veggieArray) { item in
                    HStack {
                        Text("\(item.count)")
                            .foregroundStyle(.red)
                        
                        Text(item.name)
                            .font(.headline)
                            .bold()
                    }
                }
                .onDelete(perform: deleteVeggie)
            }
            .listStyle(GroupedListStyle())
            .navigationTitle("Veggie List")
            .onAppear{
                getVeggies()
            }
        }
    }
    
    func getVeggies() {
        let veggie1 = VegetableModel(name: "Peas", count: 2)
        let veggie2 = VegetableModel(name: "Mushroom", count: 6)
        let veggie3 = VegetableModel(name: "Kale", count: 7)
        
        veggieArray.append(veggie1)
        veggieArray.append(veggie2)
        veggieArray.append(veggie3)
    }
    
    func deleteVeggie(index: IndexSet) {
        veggieArray.remove(atOffsets: index)
    }
}

#Preview {
    VegetableView()
}
