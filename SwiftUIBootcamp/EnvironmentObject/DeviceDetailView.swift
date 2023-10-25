//
//  DeviceDetailView.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 25/10/23.
//

import SwiftUI

struct DeviceDetailView: View {
    
    var selectedItem: DeviceModel
    
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
