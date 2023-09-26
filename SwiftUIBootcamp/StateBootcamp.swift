//
//  StateBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 25/09/23.
//

import SwiftUI

struct StateBootcamp: View {
    
    // SwiftUI mengelola penyimpanan properti apa pun yang Anda nyatakan sebagai State.
    // Ketika nilai berubah, tampilan body akan dimuat ulang.
    // Penggunaan State hanya bisa di lakukan di dalam view itu saja.
    
    // @State bisa digunakan untuk variabel apapun
    
    @State var backgroundColor: Color = Color.brown
    @State var myTitle: String = "Judul"
    @State var count: Int = 0
    
    var body: some View {
        ZStack {
            // background
            backgroundColor
                .ignoresSafeArea()
            
            // content
            VStack (spacing: 20) {
                Text(myTitle)
                    .font(.title)
                Text("Count: \(count)")
                    .font(.headline)
                    .underline()
                
                HStack(spacing: 10) {
                    Button {
                        self.backgroundColor = Color("VividCerise")
                        self.myTitle = "Vivid Cerise"
                        count += 1
                    } label: {
                        Text("Tombol 1")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .padding(.horizontal, 10)
                            .background(
                                Capsule()
                                    .stroke(.white, lineWidth: 2)
                            )
                    }
                    
                    Button {
                        self.backgroundColor = Color("Jasmine")
                        self.myTitle = "Jasmine"
                        count -= 1
                    } label: {
                        Text("Tombol 2")
                            .font(.headline)
                            .foregroundColor(.black)
                            .padding()
                            .padding(.horizontal, 10)
                            .background(
                                Capsule()
                                    .stroke(.black, lineWidth: 2)
                            )
                    }
                    
                    Button("Tombol 3") {
                        backgroundColor = Color("Iris")
                        self.myTitle = "Iris"
                        
                    
                    }
                }
            }
        }
    }
}

struct StateBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StateBootcamp()
    }
}

