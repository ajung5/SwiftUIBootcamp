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
                    showNewScreen.toggle()
                }, label: {
                    Text("Button")
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                })
                Spacer()
            }
            
            // METHOD #1 = SHEET
            .sheet(isPresented: $showNewScreen, content: {
                NewScreen()
            })
        }
    }
}

struct NewScreen: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.indigo
                .ignoresSafeArea()
            
            Button(action: {
                dismiss()
            }, label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(20)
            })
        }
    }
    
}

#Preview {
    PopOverBootcamp()
//    NewScreen()
}
