//
//  TernaryBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 04/10/23.
//


import SwiftUI

struct TernaryBootcamp: View {
    
    @State var isStartingState: Bool = false
    
    var body: some View {
        VStack {
            Button("Button: \(isStartingState.description)") {
                isStartingState.toggle()
            }
            
            // condition ? expression1 : expression2
            // Here, the ternary operator evaluates condition and
            // if condition is true, expression1 is executed.
            // if condition is false, expression2 is executed.
                
                
            // ternary operator mempermudah dalam penulisan logic, jadi tidak perlu menuliskan if-else dalam merubah warna background
            // ternnary operator bisa digunakan dalam setiap kondisi, misal di dalam frame, cornerRadius, dll
            
            Text(isStartingState ? "STARTING STATE" : "ENDING STATE")
            
            RoundedRectangle(cornerRadius: 15)
                // jika "isStartingState = true, maka .fill menjadi .red, jika tidak, maka .fill menjadi .blue
                .fill(isStartingState ? .red : .blue)
                .frame(
                    width: 200,
                    height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
            
            
            Spacer()
        }
    }
}

#Preview {
    TernaryBootcamp()
}
