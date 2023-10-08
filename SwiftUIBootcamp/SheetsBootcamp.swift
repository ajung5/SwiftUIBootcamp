//
//  SheetsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 08/10/23.
//


// sheet sebenarnya untuk menampilkan view yang lain, yang akan menutupi view sebelumnya

// SwiftUI’s sheets are used to present new views over existing ones, while still allowing users to drag down to dismiss the new view when they are ready.

// To use a sheet, give it something to show (some text, an image, a custom view, etc), add a Boolean that defines whether the detail view should be showing, then attach it to your main view as a modal sheet.

import SwiftUI

struct SheetsBootcamp: View {
    
    @State var showSheet: Bool = false
    
    var body: some View {
        ZStack {
            Color.teal
                .ignoresSafeArea()
            
            Button(action: {
                showSheet.toggle()
            }, label: {
                Text("Button")
                    .foregroundStyle(.white)
                    .font(.headline)
                    .padding(20)
                    .background(
                        Color.green
                        .cornerRadius(10)
                    )
            })
            .sheet(isPresented: $showSheet) {
                Text(("Hello"))
            }
        }
    }
}

#Preview {
    SheetsBootcamp()
}
