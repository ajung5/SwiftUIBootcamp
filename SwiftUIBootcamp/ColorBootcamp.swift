//
//  ColorBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 06/09/23.
//

import SwiftUI
import UIKit


struct ColorBootcamp: View {
    
    //private var mycolor = #colorLiteral(red: 1, green: 0.5409764051, blue: 0.8473142982, alpha: 1)
    
    var body: some View {
        
        VStack {
            RoundedRectangle(cornerRadius: 25)
                .fill(
                    //Color.primary
                    Color(hue: 0.1639, saturation: 1, brightness: 1)
                )
            .frame(width: 350, height: 200)
            
            // memberikan shadow menggunakan parameter "CustomColor"
            .shadow(
                color: Color("CustomColor")
                    .opacity(0.75),
                radius: 10,
                x: 0.2,
                y: 0.3
            )
            
            Circle()
                // color dengan rgb
                .fill(
                    Color(red: 0.4627, green: 0.8392, blue: 1.0)
                )
                .padding()
            
            HStack {
                Rectangle()
                    .fill(
                        //Color()
                        // menggunakan cusstom coolor di folder assets
                        Color("CustomColor")
                    )
                    .padding()
                
                Circle()
                    .fill(
                        Color("skyBlue")
                    )
                    .padding()
                
            }
        }
        
    }
}

struct ColorBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ColorBootcamp()
    }
}
