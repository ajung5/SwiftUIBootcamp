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
            
            // ternary operator mempermudah dalam penulisan logic, jadi tidak perlu menuliskan if-else dalam merubah warna background
            RoundedRectangle(cornerRadius: 15)
                // jika "isStartingState = true, maka .fill menjadi .red, jika tidak, maka .fill menjadi .blue
                // ternnary operator bisa digunakan dalam setiap kondisi, misal di dalam frame, cornerRadius, dll
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
