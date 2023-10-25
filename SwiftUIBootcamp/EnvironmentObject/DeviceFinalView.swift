//
//  DeviceFinalView.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 25/10/23.
//

import SwiftUI

struct DeviceFinalView: View {
    var body: some View {
        ZStack {
            Color.vividCerise
                .ignoresSafeArea()
            
            ScrollView {
                VStack(spacing: 20) {
                    Text("Item 1")
                    
                    Text("Item 1")
                    
                    Text("Item 1")
                }
                .foregroundStyle(.white)
                .font(.title)
            }
        }
    }
}

#Preview {
    DeviceFinalView()
}
