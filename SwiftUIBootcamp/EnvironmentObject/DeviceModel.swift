//
//  DeviceModel.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 25/10/23.
//

import Foundation

struct DeviceModel: Identifiable, Hashable {
    let id: UUID = .init()
    let name: String
    let osVersion: Double
}
