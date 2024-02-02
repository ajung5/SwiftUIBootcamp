//
//  ResizableBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 02/02/24.
//

import SwiftUI

struct ResizableBootcamp: View {
    
    @State private var showSheet: Bool = false
    @State private var showSheet2: Bool = false
    
    var body: some View {
        Button("Click Me!") {
            showSheet.toggle()
        }
        .sheet(isPresented: $showSheet, content: {
            MyNextView()
                // detent adalah ukuran sheet yang akan ditampilkan
            
                // # single detent
                // .presentationDetents([.medium])
            
                // # double detent, untuk membuat dua ukuran detent
                .presentationDetents([.medium, .large])
                .presentationDragIndicator(.hidden)
        })
        
        Button("Click Me 2!") {
            showSheet2.toggle()
        }
        .sheet(isPresented: $showSheet2, content: {
            NextView()
                //.presentationDetents([.medium])
            
                // # custtom detent
                .presentationDetents([.fraction(0.1), .medium, .large])
                .interactiveDismissDisabled() // mencegah user untuk mengembalikan ke state semula
        })
        .onAppear(perform: {
            showSheet2 = true
        })
    }
}

struct MyNextView: View {
    var body: some View {
        ZStack {
            Color.teal.ignoresSafeArea()
            Text("Hello World!")
        }
    }
    
}

struct NextView: View {
    var body: some View {
        ZStack {
            Color.pink.ignoresSafeArea()
            Text("Hello User!")
                .foregroundStyle(.white)
        }
    }
    
}

#Preview {
    ResizableBootcamp()
}
