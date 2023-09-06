//
//  ShapeCircle.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 06/09/23.
//

import SwiftUI

struct ShapeCircle: View {
    var body: some View {
        
        ZStack {
            Rectangle()
                .fill(.indigo)
                .ignoresSafeArea()
            
            VStack {
                // circle merah
                HStack {
                    Circle()
                        .fill(.red)
                        .padding()
                    
                    Circle()
                        .trim(from: 0.0, to: 0.65)
                        .stroke(Color.white, lineWidth: 5)
                        .padding()
                        
                }
                
                // circle kuning
                Circle()
                    .stroke(Color.yellow, style: StrokeStyle(lineWidth: 12, lineCap: .butt,  dash: [5]))
                    .overlay(
                        ZStack {
                            Circle()
                                .fill(.yellow)
                                .frame(width: 185, height: 185)
                            Text("Kuning")
                                 .font(.largeTitle)
                        }
                    )
                    .padding()
                
                // circle hijau
                Circle()
                    .stroke(Color.green, lineWidth: 12)
                    .overlay(
                        Circle()
                            .fill(Color.green)
                            .frame(width: 185, height: 185)
                    )
                    .padding()
            }
        }
    }
}

struct ShapeCircle_Previews: PreviewProvider {
    static var previews: some View {
        ShapeCircle()
    }
}
