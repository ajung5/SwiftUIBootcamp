//
//  SafeAreaInsetBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 04/02/24.
//

import SwiftUI

struct SafeAreaInsetBootcamp: View {
    var body: some View {
        NavigationStack {
            List(0..<15) { _ in
                Rectangle()
                    .frame(height: 300)
            }
            .navigationTitle("Safe Area Inset")
            .safeAreaInset(edge: .bottom, alignment: .trailing, spacing: nil) {
                Text("Top")
                    .padding()
                    .background(Color.teal)
                    .clipShape(Circle())
                    .padding()
                    .foregroundStyle(.white)
            }
        }
    }
}

#Preview {
    SafeAreaInsetBootcamp()
}
