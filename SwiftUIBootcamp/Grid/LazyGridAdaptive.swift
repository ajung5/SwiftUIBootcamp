//
//  LazyGridAdaptive.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 21/09/23.
//

import SwiftUI

struct LazyGridAdaptive: View {
    
    
    let kolom: [GridItem] = [
        
        // jika menggunakan lebih dari satu modifier .adaptive pada GridItem, maka sebenarnya adalah kolom tersebut akan terbagi sesuai jumlah griditem tsb
        GridItem(.adaptive(minimum: 50, maximum: 300),
                 spacing: nil,
                 alignment: nil),
        GridItem(.adaptive(minimum: 150, maximum: 300),
                 spacing: nil,
                 alignment: nil),
    ]
    
    var body: some View {
        LazyVGrid(columns: kolom) {
            ForEach(0..<50) { index in
                Rectangle()
                    .frame(height: 50)
            }
        }
    }
}

struct LazyGridAdaptive_Previews: PreviewProvider {
    static var previews: some View {
        LazyGridAdaptive()
    }
}
