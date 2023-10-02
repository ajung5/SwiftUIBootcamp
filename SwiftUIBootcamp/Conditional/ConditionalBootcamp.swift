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
    @State var showSymbols: Bool = false
    @State var showSymbol: Bool = false
    
    var body: some View {
        VStack (spacing: nil) {
            
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
            
            
            // Jika ingin membedakan ketentuan, maka logic nya di pisahkan
            HStack {
                Button {
                    showSymbol.toggle()
                } label: {
                    HStack {
                        Text("Symbol 1:")
                        Text(showSymbol.description)
                            .foregroundColor(.white)
                            .padding()
                            .background(
                                RoundedRectangle(cornerRadius: 15)
                                    .frame(height: 35)
                            )
                    }
                }
                
                Button {
                    showSymbols.toggle()
                } label: {
                    HStack {
                        Text("Symbol 2:")
                        Text(showSymbols.description)
                            .foregroundColor(.white)
                            .padding()
                            .background(
                                RoundedRectangle(cornerRadius: 15)
                                    .frame(height: 35)
                            )
                    }
                }
            }
            
            
            HStack {
                if showSymbol {
                    Image(systemName: "person")
                        .font(.system(size: 46))
                        .symbolRenderingMode(.multicolor)
                }
                
                if showSymbols {
                    Image(systemName: "person.fill")
                        .font(.system(size: 46))
                        .symbolRenderingMode(.multicolor)
                }
            }
            
            if showSymbol && showSymbols {
                Image(systemName: "heart.circle.fill")
                    .font(.system(size: 46))
                    .symbolRenderingMode(.multicolor)
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
