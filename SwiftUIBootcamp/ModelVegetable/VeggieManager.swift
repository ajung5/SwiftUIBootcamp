//
//  VeggieManager.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 18/10/23.
//

import Foundation
import SwiftUI

class VeggieManager {
    @Published var sayurArrray: [VegetableModel] = []
    
    func getVeggies() {
        let veggie1 = VegetableModel(name: "Peas", count: 2)
        let veggie2 = VegetableModel(name: "Mushroom", count: 6)
        let veggie3 = VegetableModel(name: "Kale", count: 7)
        
        sayurArrray.append(veggie1)
        sayurArrray.append(veggie2)
        sayurArrray.append(veggie3)
    }
    
    func deleteVeggie(index: IndexSet) {
        sayurArrray.remove(atOffsets: index)
    }

}
