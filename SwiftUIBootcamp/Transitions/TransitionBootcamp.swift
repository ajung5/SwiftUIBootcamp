//
//  TransitionBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 07/10/23.
//

import SwiftUI

struct TransitionBootcamp: View {
    
    @State var showView: Bool = false
    
    var body: some View {
        ZStack (alignment: .bottom) {
            VStack {
                Button(action: {
                    withAnimation(.easeInOut) {
                        self.showView.toggle()
                    }
                    
                }, label: {
                    Text("Button ")
                        .foregroundStyle(.white)
                        .padding(.vertical, 5)
                        .padding(.horizontal, 15)
                        .background(
                            RoundedRectangle(cornerRadius: 15)
                        )
                })
                Spacer()
            }
            
            RoundedRectangle(cornerRadius: 30)
                .frame(height: UIScreen.main.bounds.height * 0.5)
                .transition(.asymmetric(
                    insertion: .move(edge: .leading),
                    removal: .move(edge: .bottom)))
        }
        .ignoresSafeArea(edges: .bottom)
    }
}

#Preview {
    ZStack {
        TransitionBootcamp()
    }
}
