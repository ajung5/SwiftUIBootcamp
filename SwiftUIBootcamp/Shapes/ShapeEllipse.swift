//
//  ShapeEllipse.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 06/09/23.
//

import SwiftUI

struct ShapeEllipse: View {
    var body: some View {
        ZStack{
            Rectangle()
                .fill(.brown)
                .ignoresSafeArea()
            
            VStack {
                // #1
                HStack {
                    Ellipse()
                        .fill(Color.white)
                        .frame(width: 200, height: 100, alignment: .center)
                        .overlay(
                            Circle()
                                .frame(width: 75, height: 75)
                        )
                        .padding()
                    
                    Ellipse()
                        .fill(Color.white)
                        .frame(width: 200, height: 100)
                        .overlay(
                            Circle()
                                .frame(width: 75, height: 75)
                            
                        )
                    .padding()
                }
                
                // #2
                Ellipse()
                    .frame(width: 250, height: 150)
                    .padding( )
                
                // #3
                Ellipse()
                    .frame(width: 250, height: 75)
                    .overlay(
                        Ellipse()
                            .fill(Color.red)
                            .frame(width: 150, height: 50)
                    )
            }
        }
    }
}

struct ShapeEllipse_Previews: PreviewProvider {
    static var previews: some View {
        ShapeEllipse()
    }
}
