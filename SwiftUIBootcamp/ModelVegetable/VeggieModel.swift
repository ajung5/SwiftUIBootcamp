//
//  VeggieModel.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 18/10/23.
//

import Foundation

// Identifiable memudahkan nanti untuk For Loop

struct VegetableModel: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let count: Int
}

var veggieArray: [VegetableModel] = [
    VegetableModel(name: "Tomatoes", count: 4),
    VegetableModel(name: "Cucumbers", count: 6),
    VegetableModel(name: "Bell peppers", count: 8),
    VegetableModel(name: "Zucchini", count: 2),
    VegetableModel(name: "Eggplants", count: 1),
    VegetableModel(name: "Broccoli", count: 3),
    VegetableModel(name: "Cauliflower", count: 5),
    VegetableModel(name: "Spinach", count: 7),
    VegetableModel(name: "Lettuce", count: 9),
    VegetableModel(name: "Kale", count: 10),
    VegetableModel(name: "Mushroom", count: 14),
    VegetableModel(name: "Peas", count: 2),
]
