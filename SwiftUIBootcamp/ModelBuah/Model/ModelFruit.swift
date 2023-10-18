//
//  ModelFruit.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 17/10/23.
//

import Foundation
import SwiftUI

struct FruitModel: Identifiable, Hashable {
    var id: UUID = .init()
    var name: String
    var count: Int
    var country: String
    var color: Color
}

var fruitsArray: [FruitModel] = [
    FruitModel(name: "Apple", count: 10, country: "China", color: .red),
    FruitModel(name: "Banana", count: 20, country: "Ecuador", color: .yellow),
    FruitModel(name: "Orange", count: 30, country: "Spain", color: .orange),
    FruitModel(name: "Mango", count: 40, country: "India", color: .orange),
    FruitModel(name: "Grape", count: 50, country: "Italy", color: .purple),
    FruitModel(name: "Strawberry", count: 60, country: "United States", color: .red),
    FruitModel(name: "Blueberry", count: 70, country: "Canada", color: .blue),
    FruitModel(name: "Watermelon", count: 80, country: "Mexico", color: .green),
    FruitModel(name: "Pineapple", count: 90, country: "Brazil", color: .yellow),
    FruitModel(name: "Avocado", count: 100, country: "Mexico", color: .green),
    FruitModel(name: "Papaya", count: 110, country: "India", color: .orange),
    FruitModel(name: "Kiwi", count: 120, country: "New Zealand", color: .green),
    FruitModel(name: "Lemon", count: 130, country: "Italy", color: .yellow),
    FruitModel(name: "Lime", count: 140, country: "Mexico", color: .green),
    FruitModel(name: "Grapefruit", count: 150, country: "United States", color: .yellow),
    FruitModel(name: "Passion fruit", count: 160, country: "Colombia", color: .purple),
    FruitModel(name: "Star fruit", count: 170, country: "Thailand", color: .yellow),
    FruitModel(name: "Prickly pear", count: 180, country: "Mexico", color: .purple),
    FruitModel(name: "Pomegranate", count: 190, country: "Iran", color: .red),
    FruitModel(name: "Guava", count: 200, country: "India", color: .green),
]

