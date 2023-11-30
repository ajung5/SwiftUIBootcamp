//
//  SettingView.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 30/11/23.
//

import SwiftUI

struct SettingView: View {
    
    @State var value: Double = 55
    @State var appearance: String = ""
    @State var privateAccount: Bool = true
    
    var body: some View {
        List {
            Section("Profile") {
                Text("Username")
                    .foregroundStyle(.secondary)
                Toggle("Private Account", isOn: $privateAccount)
            }
            
            // Appearance
            Section("Appearance") {
                Slider(value: $value, in: 18...100, step: 1)
                
                Picker("Appearance", selection: $appearance) {
                    Text("Auto").tag("auto")
                    Text("Dark").tag("dark")
                    Text("Light").tag("light")
                }
                .pickerStyle(MenuPickerStyle())
                .font(.headline)
                .frame(minHeight: 55)
                .frame(maxWidth: .infinity)
                .clipShape(
                    RoundedRectangle(cornerRadius: 10)
                )
            }
            
            // version
            Section("Version") {
                HStack {
                    Text("Version")
                    Spacer()
                    Text("2.1.2")
                }
            }
        }
    }
}

#Preview {
    SettingView()
}
