//
//  VeggieManager.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 18/10/23.
//

import Foundation
import SwiftUI

class VeggieManager: ObservableObject {
    @Published var sayurArrray: [VegetableModel] = []
    @Published var isLoading: Bool = false
    
    func getVeggies() {
        let veggie1 = VegetableModel(name: "Potato", count: 2)
        let veggie2 = VegetableModel(name: "Mushroom", count: 6)
        let veggie3 = VegetableModel(name: "Carrots", count: 7)
        
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
            self.sayurArrray.append(veggie1)
            self.sayurArrray.append(veggie2)
            self.sayurArrray.append(veggie3)
            self.isLoading = false
        }
    }
    
    func deleteVeggie(index: IndexSet) {
        sayurArrray.remove(atOffsets: index)
    }

}
