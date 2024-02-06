//
//  ResponsiveViewBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 06/02/24.
//

import SwiftUI

struct ResponsiveViewBootcamp: View {
    var body: some View {
        ZStack {
            Color.teal.ignoresSafeArea()
            
            // hanya menampilkan teks yang cukup untuk satu baris
            ViewThatFits {
                Text("Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa")
                Text("Lorem ipsum dolor sit amet, consectetuer adipiscing elit.")
                Text("Lorem ipsum dolor sit amet")
            }
            
        }
        .frame(height: 300)
        .padding(16)
        .font(.headline)
    }
}

#Preview {
    ResponsiveViewBootcamp()
}
