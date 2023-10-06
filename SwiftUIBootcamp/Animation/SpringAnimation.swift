//
//  SpringAnimation.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 06/10/23.
//

import SwiftUI

struct SpringAnimation: View {
    
    @State var isAnimated: Bool = false
    
    var body: some View {
        ZStack {
            Color.teal
            
            VStack {
                Button(action: {
                    isAnimated.toggle()
                }, label: {
                    Text("Button 1: \(isAnimated.description) ")
                        .foregroundStyle(.white)
                        .padding(.vertical, 5)
                        .padding(.horizontal, 15)
                        .background(
                            RoundedRectangle(cornerRadius: 15)
                        )
                })
                
                RoundedRectangle(cornerRadius: 15)
                    .fill(isAnimated ? .vividCerise : .iris)
                    .frame(width: isAnimated ? 350 : 50, height: 100)
                    .animation(.spring(response: 0.5,
                                       dampingFraction: 0.7,
                                       blendDuration: 0),
                               value: isAnimated)
                
                
                Spacer()
            }
        }
    }
}

#Preview {
    SpringAnimation()
}
