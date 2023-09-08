//
//  ImagesBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 08/09/23.
//

import SwiftUI

struct ImagesBootcamp: View {
    var body: some View {
        VStack {
            HStack {
                Image("manIcon")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 150)
                    .clipShape(
                        Ellipse()
                    )
                    .padding()
                
                Image("github")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 150)
                    .foregroundColor(.green)
                    .padding()
            }
            
            
            HStack {
                VStack {
                    Text("Before")
                        .font(.headline)
                    
                    Image("globe1")
                        .renderingMode(.template)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 150, height: 150)
                }
                
                Image(systemName: "arrow.right.circle.fill")
                    .resizable()
                    .frame(width: 50, height: 50)
                
                VStack {
                    Text("after")
                        .font(.headline)
                    Image("globe1")
                        .renderingMode(.template)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 150, height: 150)
                        .foregroundStyle(.linearGradient(colors: [Color.red,
                                                                  Color.orange,
                                                                  Color.yellow,
                                                                  Color.green,
                                                                  Color.blue,
                                                                  Color.indigo,
                                                                  Color.purple],
                                                         startPoint: .leading,
                                                         endPoint: .trailing)
                        )
                }
            }
        }
        
        
    }
}

struct ImagesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ImagesBootcamp()
    }
}
