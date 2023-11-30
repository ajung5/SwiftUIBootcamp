//
//  TabViewBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 30/11/23.
//

import SwiftUI

struct TabViewBootcamp: View {
    var body: some View {
        TabView {
            Text("Hello, World!")
                .tabItem {
                    Text("Home")
                    Image(systemName: "house.circle")
                }
            
            SettingView()
                .tabItem {
                    Image(systemName: "person.crop.circle")
                    Text("Profile")
                }
        }
    }
}

#Preview {
    TabViewBootcamp()
}
