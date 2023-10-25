//
//  DeviceManager.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 25/10/23.
//

import Foundation

class DeviceManager: ObservableObject {
    
    @Published var devices: [DeviceModel]

    init() {
        self.devices = [
            DeviceModel(name: "iPhone 13", osVersion: 17),
            DeviceModel(name: "Macbook Pro", osVersion: 18),
            DeviceModel(name: "iPad 5th Gen", osVersion: 19),
            DeviceModel(name: "AirPod Pro gen 2", osVersion: 20),
            DeviceModel(name: "Apple Pencil", osVersion: 15),
            DeviceModel(name: "iMac", osVersion: 16)
        ]
    }
}



