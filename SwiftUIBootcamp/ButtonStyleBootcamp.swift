//
//  ButtonStyleBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 29/11/23.
//

import SwiftUI

struct ButtonStyleBootcamp: View {
    var body: some View {
        VStack(spacing: 20) {
            // #1
            // jika modifier diletakan pada tag text, maka modifier tersebut akan mengikuti tag text tersebut
            Button(action: {
                
            }, label: {
                Text("Button Style")
                    .frame(height: 35)
                    .frame(maxWidth: .infinity)
            })
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
            .controlSize(.large)
            
            
            // #2
            // button dengan modifier diluar tag label
            Button("Button Title") {
                
            }
            .frame(height: 35)
            .frame(maxWidth: .infinity)
            .buttonStyle(.borderedProminent)
            .controlSize(.extraLarge)
            .buttonBorderShape(.capsule)
            
        }
    }
}

#Preview {
    ButtonStyleBootcamp()
}
