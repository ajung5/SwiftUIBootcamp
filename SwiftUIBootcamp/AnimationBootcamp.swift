//
//  AnimationBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 06/10/23.
//

import SwiftUI

struct AnimationBootcamp: View {
    @State var isAnimated: Bool = false
    @State var scale = 1.0
    
    var body: some View {
        VStack {
            Button("Button: \(isAnimated.description)") {
                isAnimated.toggle()
            }
            
            Spacer()
            
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 25)
                // semua modifier bisa dibuatkan animasi sesuai kebutuhan
                // jika ingin menambahkan animasi ke modifier, harus diperhatikan urutan nya juga
                .fill(isAnimated ? .red : .green)
                .frame(
                    width: isAnimated ? 100 : 300,
                    height: isAnimated ? 100 : 300)
                .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
                .offset(y: isAnimated ? 300 : 0)
                .animation(
                        .default
                        .repeatCount(3, autoreverses: true),
                        value: isAnimated)

            
            Spacer()
        }
    }
}

#Preview {
    AnimationBootcamp()
}
