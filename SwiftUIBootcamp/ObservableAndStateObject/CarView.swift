//
//  CarView.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 24/10/23.
//

import SwiftUI

struct CarView: View {
    
    @State var cars: [CarModel] = []
    
    var body: some View {
        NavigationStack {
            List(carArray.shuffled()) { item in
                HStack {
                    RoundedRectangle(cornerRadius: 15)
                        .frame(width: 25, height: 25)
                    
                    VStack(alignment: .leading) {
                        Text(item.model)
                            .font(.headline)
                        
                        Text(item.brand)
                            .font(.caption)
                    }
                    
                    Spacer()
                    
                    VStack(alignment:.leading) {
                        Text("Manufactured")
                            .font(.subheadline)
                        
                        Text("\(item.year)")
                    }
                }
            }
            .listStyle(GroupedListStyle())
            .navigationTitle("Car List")
            .onAppear {
                carArray.append(CarModel(brand: "Audi", model: "RS6 Avant", year: 2021))
            }
        }
    }
}

#Preview {
    //CarView(cars: carArray[0])
    CarView()
}
