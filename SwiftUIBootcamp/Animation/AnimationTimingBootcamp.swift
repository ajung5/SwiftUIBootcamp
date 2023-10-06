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
        VStack (spacing: 10) {
            Button("Button") {
                isAnimating.toggle()
            }
            
            // dari ke empat jenis animasi ini, semuanya memiliki durasi yang sama, meskipun berbeda caranya
            
            // animation linear
            Text("Linear")
                .padding(.top, 15)
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50,
                       height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/,
                       alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .animation(.linear, value: isAnimating)
            
            // animation easin
            Text("easIn")
                .padding(.top, 15)
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50,
                       height: 100)
                .animation(.easeIn, value: isAnimating)
            
            // animation linear
            Text("easeInOut")
                .padding(.top, 15)
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50,
                       height: 100)
                .animation(.easeInOut, value: isAnimating)
            
            // animation linear
            Text("easeOut")
                .padding(.top, 15)
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50,
                       height: 100)
                .animation(.easeOut, value: isAnimating)
        }
    }
}

#Preview {
    AnimationTimingBootcamp()
}
