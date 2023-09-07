//
//  GradientBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 07/09/23.
//

import SwiftUI

struct GradientBootcamp: View {
    var body: some View {
        
        
        VStack {
            // # Linear Gradient
            RoundedRectangle(cornerRadius: 25)
                .fill(
                    LinearGradient(
                        // karena pada color menggunakan array, kita bisa menginputkan lebih dari 1 warna
                        colors: [Color.red,
                                 Color.orange,
                                 Color.yellow,
                                 Color.green,
                                 Color.blue,
                                 Color.indigo,
                                 Color.purple
                                // bisa menggunakan color literal, untung mempermudah mencari warna
                                // dengan cara mengetikan syntax: Color(#colorLiteral())
                                // Color(#colorLiteral(red: 0.9994240403, green: 0.9855536819, blue: 0, alpha: 1))
                                ],
                        
                        // arah gradasi warna bisa disesuaikan dengan kebutuhan
                        // e.g: .topLeading, .bottomLeading, .topTrailing, dll
                        startPoint: .leading, // awal gradasi warna
                        endPoint: .trailing) // akhir gradasi warna
                )
                //.frame(width: 300, height: 200)
                .padding()
                .scaledToFit()
            
            // Radial Gradient
            Circle()
                .fill(
                    RadialGradient(
                        colors: [Color.red,
                                 Color.orange,
                                 Color.yellow,
                                 Color.green,
                                 Color.blue,
                                 Color.indigo,
                                 Color.purple],
                        center: .center,
                        startRadius: 10,
                        endRadius: 175
                    )
                )
                .padding()
                .scaledToFit()
        }
    }
}

struct GradientBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GradientBootcamp()
    }
}
