//
//  DeviceFinalView.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 25/10/23.
//

import SwiftUI

struct DeviceFinalView: View {
    
    // untuk bisa mengakses data pada third view bisa menggunakan beberapa cara
    // #1
    @ObservedObject var deviceModel: DeviceManager
    
    var body: some View {
        ZStack {
            Color.vividCerise
                .ignoresSafeArea()
            
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    ForEach(deviceModel.devices, id: \.self) { perangkat in
                        Text(perangkat.name)
                    }
                }
                .foregroundStyle(.white)
                .font(.title)
            }
        }
    }
}

#Preview {
    DeviceFinalView(deviceModel: DeviceManager())
}
