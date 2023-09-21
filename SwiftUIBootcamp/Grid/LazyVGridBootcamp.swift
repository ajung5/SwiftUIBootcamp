//
//  GridBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 14/09/23.
//

import SwiftUI

struct GridBootcamp: View {
    
    // Use a lazy vertical grid when you want to display a large, vertically scrollable collection of views arranged in a two dimensional layout
    // The first view that you provide to the grid’s content closure appears in the top row of the column that’s on the grid’s leading edge
    // 
    
    let kolom: [GridItem] = [
        // setiap griditem, mewakili satu kolom
        GridItem(.fixed(50), spacing: nil, alignment: nil),
        GridItem(.fixed(50), spacing: nil, alignment: nil),
        
        // memodifikasi column ke 5 dengan mengubah lebar nya
        GridItem(.fixed(100), spacing: nil, alignment: nil),
        GridItem(.fixed(50), spacing: nil, alignment: nil),
        GridItem(.fixed(50), spacing: nil, alignment: nil)
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

struct GridBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GridBootcamp()
    }
}
