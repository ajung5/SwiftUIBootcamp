//
//  OpacityTransition.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 07/10/23.
//

import SwiftUI

struct OpacityTransition: View {
    
    @State var show:Bool = false
    
    var body: some View {
        VStack {
            Button(action: {
                withAnimation(.spring()) {
                    self.show.toggle()
                }
            }, label: {
                Text("Opacity Transitions: \(show.description)")
            })
            
            
            if show {
                RoundedRectangle(cornerRadius: 15)
                    .fill(.vividCerise)
                    .frame(width: show ? 300 : 50, height: 100)
                    .transition(.opacity)
                
            }
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    OpacityTransition()
}
