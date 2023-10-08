//
//  MoveTransition.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 07/10/23.
//

import SwiftUI

struct MoveTransition: View {
    
    @State var show:Bool = false
    
    var body: some View {
        VStack {
            Button(action: {
                withAnimation(.spring()) {
                    self.show.toggle()
                }
            }, label: {
                Text("Move Transitions: \(show.description)")
            })
            
            
            if show {
                RoundedRectangle(cornerRadius: 15)
                    .fill(.vividCerise)
                    .frame(width: 100, height: 100)
                    .transition(.move(edge: .leading))
                
                RoundedRectangle(cornerRadius: 15)
                    .fill(.iris)
                    .frame(width: 100, height: 100)
                    .transition(.move(edge: .trailing))
            }
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    MoveTransition()
}
