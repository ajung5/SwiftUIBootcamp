//
//  ForEachArray.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 13/09/23.
//

import SwiftUI

struct CarModel: Identifiable {
    let id = UUID ()
    let brand: String
    let model: String
    let year: Int
}

struct ForEachArray: View {
    var Cars: [CarModel] = [
        CarModel(brand: "Toyota", model: "GR Yaris", year: 2020),
        CarModel(brand: "Toyota", model: "Land Cruiser 300", year: 2021),
        CarModel(brand: "Toyota", model: "RAV-4", year: 2022),
        CarModel(brand: "Honda", model: "Civic", year: 2021)
    ]
    
    var body: some View {
        VStack {
            ForEach(Cars) { item in
                Text("\(item.brand)")
            }
        }
    }
}

struct ForEachArray_Previews: PreviewProvider {
    static var previews: some View {
        ForEachArray()
    }
}
