//
//  TextPink.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 14/09/23.
//

import SwiftUI

struct TextPink: View {
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.custom("PinkishRegular", size: 55))
            
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.custom("PinkDisplayRegular", size: 55))
                .padding()
            
            RoundedRectangle(cornerRadius: 15)
                .frame(width: 200, height: 200)
                .overlay(
                    VStack (spacing: 0){
                        Text("grand")
                            .foregroundColor(.white)
                            .font(.custom("pricedown", size: 55))
                        Text("theft")
                            .foregroundColor(.white)
                            .font(.custom("pricedown", size: 55))
                        Text("auto")
                            .foregroundColor(.white)
                            .font(.custom("pricedown", size: 55))
                    }
                )
                
                
        }
        //.padding(.horizontal)
    }
}

struct TextPink_Previews: PreviewProvider {
    static var previews: some View {
        TextPink()
    }
}
