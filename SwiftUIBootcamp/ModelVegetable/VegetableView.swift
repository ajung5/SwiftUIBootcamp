//
//  VegetableView.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 18/10/23.
//


// ini adalah main view dari "Vegetable Model"


import SwiftUI

struct VegetableView: View {
    var body: some View {
        NavigationStack {
            List {
                ForEach(veggieArray) { item in
                    HStack {
                        Text("\(item.count)")
                            .foregroundStyle(.red)
                        
                        Text(item.name)
                            .font(.headline)
                            .bold()
                    }
                }
            }
            .listStyle(GroupedListStyle())
            .navigationTitle("Veggie List")
            .onAppear{
                
            }
        }
    }
}

#Preview {
    VegetableView()
}
