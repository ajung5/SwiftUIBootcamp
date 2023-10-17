//
//  ModelFruit.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 17/10/23.
//

import Foundation
import SwiftUI

struct FruitModel: Identifiable, Hashable {
    let id: String = UUID().uuidString
    let name: String
    let country: String
    let color: Color
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
}
