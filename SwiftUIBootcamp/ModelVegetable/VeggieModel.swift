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
