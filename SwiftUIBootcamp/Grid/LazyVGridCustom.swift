//
//  LazyVGridCustom.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 21/09/23.
//

import SwiftUI

struct LazyVGridCustom: View {
    
    let columns: [GridItem] = [
        
        // .flexible membuat lebar grid jadi fleksibel, tanpa harus menentukan lebar/tinggi grid
        GridItem(.flexible(),
                 // spacing disini antara  kolom
                 spacing: 1,
                 alignment: nil),
        GridItem(.flexible(),
                 spacing: nil,
                 alignment: nil),
        GridItem(.flexible(),
                 spacing: 8,
                 alignment: nil)
    ]
    
    var body: some View {
        ScrollView {
            
            LazyVGrid(columns: columns,
                      alignment: .center,
                      
                      // spacing disini antara baris (row) bukan kolom
                      spacing: 3,
                      pinnedViews: []) {
                ForEach(0..<50) { index in
                    Rectangle()
                        .frame(height: 150)
                }
            }
        }
    }
}

struct LazyVGridCustom_Previews: PreviewProvider {
    static var previews: some View {
        LazyVGridCustom()
    }
}
