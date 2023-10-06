//
//  AnimationTimingBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 06/10/23.
//

import SwiftUI

struct AnimationTimingBootcamp: View {
    
    @State var isAnimating: Bool = false
    
    var body: some View {
        VStack {
            Button("Button") {
                isAnimating.toggle()
            }
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 100,
                       height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/,
                       alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .animation(.default, value: isAnimating)
        }
    }
}

#Preview {
    AnimationTimingBootcamp()
}
