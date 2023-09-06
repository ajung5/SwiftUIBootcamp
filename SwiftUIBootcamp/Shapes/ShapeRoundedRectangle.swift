//
//  ShapeRoundedRectangle.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 06/09/23.
//

import SwiftUI

struct ShapeRoundedRectangle: View {
    var body: some View {
        VStack {
            HStack {
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: 150, height: 100)
                
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: 150, height: 100)
            }
            
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 250, height: 100)
                .padding(.top, 10)
        }
    }
}

struct ShapeRoundedRectangle_Previews: PreviewProvider {
    static var previews: some View {
        ShapeRoundedRectangle()
    }
}
