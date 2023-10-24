//
//  CitizenManager.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 24/10/23.
//

import Foundation

class CitizenManager: ObservableObject {
    @Published var cityArray: [CitizenModel] = []
    @Published var isLoading: Bool = false
    
    // Func getCitizen
    func getCitizen() {
        let city1 = CitizenModel(city: "Manado", citizenCount: 55)
        let city2 = CitizenModel(city: "Lampung", citizenCount: 44)
        let city3 = CitizenModel(city: "Bekasi", citizenCount: 33)
        let city4 = CitizenModel(city: "Subang", citizenCount: 100)
        
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            
            // tambahkan .self untuk memberitahu/rreference xcode cityArray.append bagian dari classs
            self.cityArray.append(city1)
            self.cityArray.append(city2)
            self.cityArray.append(city3)
            self.cityArray.append(city4)
            self.isLoading = false
        }
    }
    
    func deleteCitizen(index: IndexSet) {
        cityArray.remove(atOffsets: index)
    }
}
