//
//  PopOverBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 08/10/23.
//

import SwiftUI

struct PopOverBootcamp: View {
    
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
            
            // METHOD #1 = SHEET
//            .sheet(isPresented: $showNewScreen, content: {
//                NewScreen()
//            })
            
            // Methode #2 = TRANSITION
            ZStack {
                if showNewScreen {
                    NewScreen(showNewScreen: $showNewScreen)
                        .padding(.top, 100)
                        .transition(.move(edge: .bottom))
                }
            }
            .zIndex(2.0)
        }
    }
}

struct NewScreen: View {
    
    @Environment(\.dismiss) var dismiss
    @Binding var showNewScreen: Bool
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.indigo
                .ignoresSafeArea()
            
            Button(action: {
                //dismiss()
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
    PopOverBootcamp()
//    NewScreen()
}
