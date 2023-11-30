//
//  BackgorundMaterialBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 29/11/23.
//

import SwiftUI

struct BackgorundMaterialBootcamp: View {
    var body: some View {
        VStack {
            Spacer()
            
            VStack {
                RoundedRectangle(cornerRadius: 4)
                    .frame(width: 50, height: 4)
                    .padding()
                
                
                Text("Hello, World!")
                
                Spacer()
                Spacer()
            }
            .frame(height: 350)
            .frame(maxWidth: .infinity)
            
            // to blur the bbackground
            .background(.ultraThinMaterial)
            .clipShape(RoundedRectangle(cornerRadius: 15))
        }
        .ignoresSafeArea()
        .background(
            Image("github")
                .resizable()
                .scaledToFit()
        )
    }
}

#Preview {
    BackgorundMaterialBootcamp()
}
