//
//  CarManager.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 24/10/23.
//

import Foundation


class CarManager: ObservableObject {
    @Published  var carsArray: [CarModel] = []
    
    
    // function untuk menambahkan object baru
    func getCars() {
        let car1 = CarModel(brand: "Suzuki", model: "Swift", year: 2015)
        let car2 = CarModel(brand: "Daihatsu", model: "Mira", year: 2014)
        let car3 = CarModel(brand: "Hino", model: "Dutro", year: 2013)
        let car4 = CarModel(brand: "Isuzu", model: "Elf", year: 2012)
        
        carArray.append(car1)
        carArray.append(car2)
        carArray.append(car3)
        carArray.append(car4)
    }
}
