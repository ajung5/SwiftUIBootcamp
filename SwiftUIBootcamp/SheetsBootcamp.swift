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
            
            // tidak dapat menggunakan lebih dari satuu sheet/fullscreen cover dalam satu view hirarki
            // atau keduanya, jadi pilih salah satu aja
            
            
            .fullScreenCover(isPresented: $showSheet, content: {
                
                // JANGAN MENAMBAHKAN CONDITIONAL LOGIC DISINI, KARENA BAKAL ERRROR
                SecondScreen()
            })
            
//            .sheet(isPresented: $showSheet) {
            // JANGAN MENAMBAHKAN CONDITIONAL LOGIC DISINI, KARENA BAKAL ERRROR
//                SecondScreen()
//            }
            
            // beda dari kedua nya adalah, kalo fullscreencover, akan menuutup semua halaman view pertama
            // tapi kalo sheet, hanya sebagian
        }
    }
}

struct SecondScreen: View {

    @Environment(\.dismiss) var dismiss

    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.vividCerise
                .ignoresSafeArea()
            
            Button(action: {
                dismiss()
            }, label: {
                Image(systemName: "xmark")
                    .foregroundStyle(.white)
                    .font(.largeTitle)
                    .padding(20)
            })
        }
    }
    
}

#Preview {
    SheetsBootcamp()
//    SecondScreen()
}
