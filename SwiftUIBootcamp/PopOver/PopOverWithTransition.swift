//
//  PopOverWithTrransition.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 08/10/23.
//

import SwiftUI

struct PopOverWithTransition: View {
    
    @State var showNewScreen: Bool = false
    
    var body: some View {
        ZStack {
            Color.teal
                .ignoresSafeArea()
            
            VStack {
                Button(action: {
                    withAnimation(.spring) {
                        self.showNewScreen.toggle()
                    }
                }, label: {
                    Text("Button")
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                })
                Spacer()
            }
            
            // Methode #2 = TRANSITION
            ZStack {
                if showNewScreen {
                    NewScreenView(showNewScreen: $showNewScreen)
                        .padding(.top, 100)
                        .transition(.move(edge: .bottom))
                }
            }
            .zIndex(2.0)
        }
    }
}


struct NewScreenView: View {
    
    @Binding var showNewScreen: Bool
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.indigo
                .ignoresSafeArea()
            
            Button(action: {
                showNewScreen.toggle()
            }, label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(20)
            })
        }    }
    
}

#Preview {
    PopOverWithTransition()
}
