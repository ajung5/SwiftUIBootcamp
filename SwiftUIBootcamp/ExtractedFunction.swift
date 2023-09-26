//
//  ExtractedFunction.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 26/09/23.
//

import SwiftUI

struct ExtractedFunction: View {
    
    @State var backgroundColor: Color = Color("VividCerise")
    
    var body: some View {
        ZStack {
            //background
            backgroundColor
                .ignoresSafeArea()
            
            // content
            VStack {
                Text("Title")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                Button {
                    changeBackgrouund()
                } label: {
                    Text("PRESS ME")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(.black)
                        .cornerRadius(10)
                }
            }
        }
    }
    
    // dengan menggunakan function, jika kita build apps yang komplek. di dalam view nya akan sangat panjang
    // jadi kita ekstrak logic ke dalam sebuah function
    func changeBackgrouund() {
        backgroundColor = .teal
    }
    
}

struct ExtractedFunction_Previews: PreviewProvider {
    static var previews: some View {
        ExtractedFunction()
    }
}
