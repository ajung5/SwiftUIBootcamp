//
//  ShapeRectangle.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 06/09/23.
//

import SwiftUI

struct ShapeRectangle: View {
    var body: some View {
        VStack() {
            HStack {
                
                Rectangle()
                    .fill(.indigo)
                    .frame(width: 150, height: 100, alignment: .trailing)
                    .padding(.bottom, 5)
                
                Rectangle()
                    .fill(.indigo)
                    .frame(width: 150, height: 100, alignment: .trailing)
                    .padding(.bottom, 5)
            }
            
            Rectangle()
                .fill(.indigo)
                .frame(width: 200, height: 100, alignment: .trailing)
                .border(.black)
            
            Rectangle()
                .fill(.indigo)
                .frame(width: 200, height: 100, alignment: .trailing)
                .border(.black)
        }
    }
}

struct ShapeRectangle_Previews: PreviewProvider {
    static var previews: some View {
        ShapeRectangle()
    }
}
