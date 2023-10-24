//
//  CarModel.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 24/10/23.
//

import Foundation

struct CarModel: Identifiable, Hashable {
    
    let id: UUID = .init()
    let brand: String
    let model: String
    let year: Int
}

var carArray: [CarModel] = [
//    CarModel(brand: "Toyota", model: "Camry", year: 2023),
//    CarModel(brand: "Honda", model: "Accord", year: 2022),
//    CarModel(brand: "Nissan", model: "Altima", year: 2021),
//    CarModel(brand: "Ford", model: "Fusion", year: 2020),
//    CarModel(brand: "Hyundai", model: "Sonata", year: 2019),
//    CarModel(brand: "Kia", model: "K5", year: 2018),
//    CarModel(brand: "Mazda", model: "6", year: 2017),
//    CarModel(brand: "Subaru", model: "Legacy", year: 2016),
//    CarModel(brand: "Volkswagen", model: "Jetta", year: 2015),
//    CarModel(brand: "Chevrolet", model: "Cruze", year: 2014),
    CarModel(brand: "Dodge", model: "Dart", year: 2013),
    CarModel(brand: "Chrysler", model: "200", year: 2012),

    // European car brands
    CarModel(brand: "BMW", model: "3 Series", year: 2023),
    CarModel(brand: "Mercedes-Benz", model: "C-Class", year: 2022),
//    CarModel(brand: "Audi", model: "A4", year: 2021),
//    CarModel(brand: "Volkswagen", model: "Passat", year: 2020),
//    CarModel(brand: "Volvo", model: "S60", year: 2019),
//    CarModel(brand: "Jaguar", model: "XE", year: 2018),
//    CarModel(brand: "Alfa Romeo", model: "Giulia", year: 2017),
//    CarModel(brand: "Mini", model: "Cooper", year: 2016),
//    CarModel(brand: "Fiat", model: "500", year: 2015),
//    CarModel(brand: "Peugeot", model: "308", year: 2014),
//    CarModel(brand: "Citroën", model: "C4", year: 2013),
//    CarModel(brand: "Renault", model: "Mégane", year: 2012),

    // Asian car brands
//    CarModel(brand: "Hyundai", model: "Elantra", year: 2023),
//    CarModel(brand: "Kia", model: "Forte", year: 2022),
//    CarModel(brand: "Toyota", model: "Corolla", year: 2021),
//    CarModel(brand: "Honda", model: "Civic", year: 2020),
//    CarModel(brand: "Mazda", model: "3", year: 2019),
    CarModel(brand: "Subaru", model: "Impreza", year: 2018),
    CarModel(brand: "Mitsubishi", model: "Lancer", year: 2017),
//    CarModel(brand: "Scion", model: "tC", year: 2016),
//    CarModel(brand: "Suzuki", model: "Swift", year: 2015),
//    CarModel(brand: "Daihatsu", model: "Mira", year: 2014),
//    CarModel(brand: "Hino", model: "Dutro", year: 2013),
//    CarModel(brand: "Isuzu", model: "Elf", year: 2012),
]
