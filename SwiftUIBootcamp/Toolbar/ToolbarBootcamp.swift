//
//  ToolbarBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 19/12/23.
//

import SwiftUI

struct ToolbarBootcamp: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color.teal.ignoresSafeArea()
                
                Text("Kamikaze")
                    .foregroundStyle(.primary)
            }
            .navigationTitle("Toolbar")
            .font(.headline)
            
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Image(systemName: "house")
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    Image(systemName: "house")
                }
                
                ToolbarItem(placement: .bottomBar) {
                    Image(systemName: "house")
                }
            }
        }
    }
}

#Preview {
    ToolbarBootcamp()
}
