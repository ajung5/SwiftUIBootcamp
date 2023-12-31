//
//  DeviceDetailView.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 25/10/23.
//

import SwiftUI

struct DeviceDetailView: View {
    
    var selectedItem: DeviceModel
    
    // untuk bisa mengakses data pada second view bisa menggunakan beberapa cara
    // #1
    // @ObservedObject var deviceModel: DeviceManager
    
    //@ObservedObject var deviceModel: DeviceManager
        
        // #2
        // yaitu meenggunakan @EnvironmentObject Property wrapper
    
    var body: some View {
        ZStack {
            Color.teal
                .ignoresSafeArea()
            
            NavigationLink(destination: DeviceFinalView()) {
                Text(selectedItem.name)
                    .font(.headline)
                    .foregroundStyle(.vividCerise)
                    .padding()
                    .background(.white)
                    .clipShape(Capsule())
            }
        }
    }
}

#Preview {
    DeviceDetailView(selectedItem: DeviceModel(name: "iPhone 15 Pro", osVersion: 12))
}
