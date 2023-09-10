//
//  Overlay.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 09/09/23.
//

import SwiftUI

struct Overlay: View {
    var body: some View {
        VStack {
            HStack {
                Circle()
                    .fill(.cyan)
                    .frame(width: 75, height: 75)
                
                    // modifier overlay layer berada di depan posisi layer objek circle
                    .overlay(
                        Text("1")
                            .font(.largeTitle)
                            .foregroundColor(.white)
                            
                    )
                    // modifier background berada dibelakang posisi layer objek circle
                    .background(
                        Circle()
                            .fill(Color.yellow)
                            .frame(width: 100, height: 100)
                    )
                
                    // padding disini untuk circle background
                    .padding(.all, 15)
                
                Circle()
                    .fill(.cyan)
                    .frame(width: 75, height: 75)
                
                    // modifier overlay layer berada di depan posisi layer objek circle
                    .overlay(
                        Text("2")
                            .font(.largeTitle)
                            .foregroundColor(.white)
                            
                    )
                    // modifier background berada dibelakang posisi layer objek circle
                    .background(
                        Circle()
                            .fill(Color.yellow)
                            .frame(width: 100, height: 100)
                    )
                
                    // padding disini untuk circle background
                .padding(.all, 15)

            }
            
            Spacer()
                .frame(height: 100)
            
            
            // Overlay dan background mempunyai alignment
            Rectangle()
                .frame(width: 125, height: 125)
                .overlay(
                    Rectangle()
                        .fill(.red)
                        .frame(width: 75, height: 75)
                    , alignment: .topLeading
                )
            
                .background(
                    Rectangle()
                        .fill(Color.gray)
                        .frame(width: 200, height: 200)
                    ,alignment: .centerFirstTextBaseline
                )
        }
    }
}

struct Overlay_Previews: PreviewProvider {
    static var previews: some View {
        Overlay()
    }
}
