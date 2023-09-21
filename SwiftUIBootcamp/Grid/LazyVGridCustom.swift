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
                 spacing: nil,
                 alignment: nil),
        GridItem(.flexible(),
                 spacing: nil,
                 alignment: nil),
        GridItem(.flexible(),
                 spacing: nil,
                 alignment: nil)
    ]
    
    var body: some View {
        ScrollView {
            
            LazyVGrid(columns: columns,
                      alignment: .center,
                      spacing: nil,
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
