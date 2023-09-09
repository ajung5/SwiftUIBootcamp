//
//  BackgroundAndOverlay.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 09/09/23.
//

import SwiftUI

struct BackgroundAndOverlay: View {
    var body: some View {
        VStack {
            // Stack background
            HStack {
                Text("STOP")
                    .frame(width: 130, height: 130, alignment: .center)
                    .foregroundColor(.yellow)
                    .font(.largeTitle)
                    .background(
                        Circle()
                            .fill(.blue)
                            .frame(width: 100, height: 100)
                    )
                    .background(
                        Circle()
                            .fill(.red)
                            .frame(width: 120, height: 120)
                    )
                
                Text("Gradient")
                    .frame(width: 130, height: 130, alignment: .center)
                    .foregroundColor(.yellow)
                    .font(.largeTitle)
                    .background(
                        Circle()
                            .fill(RadialGradient(colors: [Color.red,
                                                          Color.orange,
                                                          Color.yellow,
                                                          Color.green,
                                                          Color.blue,
                                                          Color.indigo,
                                                          Color.purple],
                                                 center: .center,
                                                 startRadius: 5,
                                                 endRadius: 50))
                            .frame(width: 100, height: 100)
                    )
                    .background(
                        Circle()
                            .fill(.red)
                            .frame(width: 120, height: 120)
                    )
            }
        }
    }
}

struct BackgroundAndOverlay_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundAndOverlay()
    }
}
