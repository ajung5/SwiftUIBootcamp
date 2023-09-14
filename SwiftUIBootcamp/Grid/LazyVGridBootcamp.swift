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
        GridItem(.fixed(50), spacing: nil, alignment: nil)
    ]
    
    var body: some View {
        LazyVGrid(columns: kolom) {
            Rectangle()
            Rectangle()
            Rectangle()
            Rectangle()
            Rectangle()
            Rectangle()
        }
    }
}

struct GridBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GridBootcamp()
    }
}
