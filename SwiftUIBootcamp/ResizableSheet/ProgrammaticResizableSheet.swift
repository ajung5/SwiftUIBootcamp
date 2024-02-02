//
//  ProgrammaticResizableSheet.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 02/02/24.
//

import SwiftUI

struct ProgrammaticResizableSheet: View {
    
    @State private var showSheet: Bool = false
    @State private var detents: PresentationDetent = .large
    
    var body: some View {
        Button("Click Me!") {
            showSheet.toggle()
        }
        .sheet(isPresented: $showSheet, content: {
            NextPage(detent: $detents)
                // .presentationDetents([.medium])
        })
    }
}

struct NextPage: View {
    
    @Binding var detent: PresentationDetent
    
    var body: some View {
        ZStack {
            Color.darkCharcoal.ignoresSafeArea()
            
            VStack (spacing: 20) {
                
                // untuk membuat detent ini, harus sesuai dengan array yang ada di presentationDetents modifier
                Button("20%") {
                    detent = .fraction(0.2)
                }
                
                Button("Medium") {
                    detent = .medium
                }
                
                Button("600px") {
                    detent = .height(600)
                }
                
                Button("Large") {
                    detent = .large
                }
            }
            .foregroundStyle(.white)
        }
        .presentationDetents(
            [.medium,
             .large,
             .fraction(0.20),
             .height(600) ],
            selection: $detent)
        .presentationDragIndicator(.hidden)
    }
}

#Preview {
    ProgrammaticResizableSheet()
}
