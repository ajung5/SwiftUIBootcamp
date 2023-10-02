//
//  ConditionalBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 02/10/23.
//

import SwiftUI

struct ConditionalBootcamp: View {
    
    @State var showCircle: Bool = false
    @State var showRectangle: Bool = false
    
    var body: some View {
        VStack (spacing: 35) {
            
            Button {
                // di swiftUI ada fitur yang mempermudah untuk mengganti nilai true/false. yaitu, fitur .toggle()
                showCircle.toggle()
            } label: {
                Text("Show Cirrcle: \(showCircle.description)")
                    .foregroundColor(.white)
                    .padding(.horizontal, 15)
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .frame(height: 35)
                    )
            }
            
            Button {
                showRectangle.toggle()
            } label: {
                Text("Show Rectangle: \(showRectangle.description)")
                    .foregroundColor(.white)
                    .padding(.horizontal, 15)
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .frame(height: 35)
                    )
            }

            
            // logic untuk menampilkan shapes
            // urutan logic swwiftui akan membaca dari atas
            // jika keduanya bernilai true, maka logic ke bawah tidak akan dijalankan
            if showCircle {
                VStack {
                    Circle()
                        .frame(width: 100, height: 100)
                    
                    Text("Jika showCircle() bernilai true, maka shapes circle akan ditampilkan")
                        .multilineTextAlignment(.center)
                }
            } else if showRectangle{
                VStack {
                    Rectangle()
                        .frame(width: 100, height: 100)
                    
                    Text("Jika showRectangle() bernilai true, maka shapes Rectangle akan ditampilkan")
                        .multilineTextAlignment(.center)
                }
            } else {
                VStack {
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 200, height: 100)
                    
                    Text("Jika showCircle() dan showRectangle() bernilai false, maka shapes RoundedRectangle akan ditampilkan")
                        .multilineTextAlignment(.center)
                }
            }
            
            Spacer()
        }
        .padding(.horizontal, 15)
    }
}

struct ConditionalBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ConditionalBootcamp()
    }
}
