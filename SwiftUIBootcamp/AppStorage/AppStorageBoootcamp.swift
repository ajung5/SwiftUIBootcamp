//
//  AppStorageBoootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 14/11/23.
//

import SwiftUI

struct AppStorageBoootcamp: View {
    
    @AppStorage("name") var currentUsername: String?
    
    var body: some View {
        VStack(spacing: 20) {
            Text(currentUsername ?? "Add Username Here")
            
            if let name = currentUsername {
                Text(name)
            }
            
            Button("Save".uppercased()) {
                let name: String = "John Doe"
                currentUsername = name
            }
        }
    }
}

#Preview {
    AppStorageBoootcamp()
}
