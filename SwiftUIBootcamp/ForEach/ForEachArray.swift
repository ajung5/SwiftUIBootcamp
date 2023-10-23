//
//  ForEachArray.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 13/09/23.
//

import SwiftUI

struct CarNameModel: Identifiable {
    let id = UUID ()
    let brand: String
    let model: String
    let year: Int
}

struct ForEachArray: View {
    var Cars: [CarNameModel] = [
        CarNameModel(brand: "Toyota", model: "GR Yaris", year: 2020),
        CarNameModel(brand: "Toyota", model: "Land Cruiser 300", year: 2021),
        CarNameModel(brand: "Toyota", model: "RAV-4", year: 2022),
        CarNameModel(brand: "Honda", model: "Civic", year: 2021)
    ]
    
    var body: some View {
        VStack {
            ForEach(Cars) { item in
                Text("\(item.brand), \(item.model)")
            }
        }
    }
}

struct ForEachArray_Previews: PreviewProvider {
    static var previews: some View {
        ForEachArray()
    }
}
