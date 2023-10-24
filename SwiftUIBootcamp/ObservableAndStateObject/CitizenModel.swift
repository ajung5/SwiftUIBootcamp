//
//  CitizenModel.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 24/10/23.
//

import Foundation

struct CityModel: Identifiable, Hashable {
    
    let id: UUID = .init()
    let city: String
    let citizenCount: Int
}

var cityArray: [CityModel] = [

    CityModel(city: "Manado", citizenCount: 55),
    CityModel(city: "Lampung", citizenCount: 44),
    CityModel(city: "Bekasi", citizenCount: 33),
    CityModel(city: "Subang", citizenCount: 100)
]
