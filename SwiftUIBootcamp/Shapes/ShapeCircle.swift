//
//  ShapeCircle.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 06/09/23.
//

import SwiftUI

struct ShapeCircle: View {
    var body: some View {
        VStack {
            HStack {
                Text("Grup 1")
                Circle()
                    .fill(.teal)
                    .padding()
                Circle()
                    .padding()            }
            .border(.black)
            
            
            HStack {
                Circle()
                Circle()
            }
            .border(.black)
            
            HStack {
                Circle()
                Circle()
            }
            .border(.black)
            
            
            HStack {
                Circle()
                Circle()
            }
            .border(.black)
            
        }
    }
}

struct ShapeCircle_Previews: PreviewProvider {
    static var previews: some View {
        ShapeCircle()
    }
}
