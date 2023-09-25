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
                 spacing: 6,
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
            
            Rectangle()
                .fill(Color.cyan)
                .frame(height: 400)
            
            LazyVGrid(columns: columns,
                      alignment: .center,
                      
                      // spacing disini antara baris (row) bukan kolom
                      spacing: 6,
                      
                      // pinnedviews untuk mengunci header/footer ketika di scroll
                      pinnedViews: [.sectionHeaders]) {
                Section(header:
                            Text("Section 1")
                                .font(.title)
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .background(.teal)
                                .padding()
                ) {
                    ForEach(0..<20) { index in
                        Rectangle()
                            .frame(height: 150)
                    }
                }
                
                
                // # Section 2
                Section(header:
                            Text("Section 2")
                                .font(.title)
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .background(Color("VividCerise"))
                                .padding()
                ) {
                    ForEach(0..<20) { index in
                        Rectangle()
                            .fill(.orange)
                            .frame(height: 150)
                    }
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
