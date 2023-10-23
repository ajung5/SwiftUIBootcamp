//
//  CarModel.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 23/10/23.
//

import Foundation

// Identifiable -> agar mudah nanti di looping dengan foreach

struct CarModel:Identifiable {
    let id: String = UUID().uuidString
    let brand: String
    let model: String
    let year: Int
}

var carModel: [CarModel] = [
    CarModel(brand: "Toyota", model: "Camry", year: 2022),
    CarModel(brand: "Honda", model: "Civic", year: 2022),
    CarModel(brand: "Ford", model: "Mustang", year: 2023),
    CarModel(brand: "Chevrolet", model: "Silverado", year: 2021),
    CarModel(brand: "Volkswagen", model: "Golf", year: 2020),
    CarModel(brand: "Tesla", model: "Model 3", year: 2023),
    CarModel(brand: "Nissan", model: "Altima", year: 2021),
    CarModel(brand: "Subaru", model: "Outback", year: 2022),
    CarModel(brand: "BMW", model: "3 Series", year: 2022),
    CarModel(brand: "Mercedes-Benz", model: "E-Class", year: 2023),
    CarModel(brand: "Audi", model: "A4", year: 2022),
    CarModel(brand: "Kia", model: "Optima", year: 2022),
    CarModel(brand: "Hyundai", model: "Elantra", year: 2023),
    CarModel(brand: "Lexus", model: "RX", year: 2022),
    CarModel(brand: "Mazda", model: "CX-5", year: 2023),
    CarModel(brand: "Jeep", model: "Wrangler", year: 2021),
    CarModel(brand: "Porsche", model: "911", year: 2022),
    CarModel(brand: "Volvo", model: "XC90", year: 2022),
    CarModel(brand: "Jaguar", model: "F-PACE", year: 2023),
    CarModel(brand: "Land Rover", model: "Discovery", year: 2022),
    CarModel(brand: "Mitsubishi", model: "Outlander", year: 2021),
    CarModel(brand: "Buick", model: "Enclave", year: 2022),
    CarModel(brand: "Cadillac", model: "Escalade", year: 2023),
    CarModel(brand: "Lincoln", model: "Navigator", year: 2022),
    CarModel(brand: "Infiniti", model: "Q50", year: 2022)
]

