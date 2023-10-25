//
//  MainDashboard.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 25/10/23.
//

import SwiftUI

struct MainDashboard: View {
    
    // initialize DeviceManager() kedalam var deviceManager
    @StateObject var deviceManager: DeviceManager = DeviceManager()
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(deviceManager.devices, id: \.self) { item in
                    Text(item.name)
                }
            }
        }
    }
}

#Preview {
    MainDashboard()
}
