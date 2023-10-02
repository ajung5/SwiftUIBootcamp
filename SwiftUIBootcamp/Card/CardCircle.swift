//
//  CardCircle.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 02/10/23.
//

import SwiftUI

struct CardCircle: View {
    var body: some View {
        HStack {
            Text("BLACK")
                .font(.system(size: 34))
                .foregroundColor(.black)
                .background(
                    Rectangle()
                        .fill(Color("VividCerise"))
                        .frame(width: 125, height: 55)
                )
            
            Text("PINK")
                .font(.system(size: 34))
                .foregroundColor(Color("VividCerise"))
                .background(
                    Rectangle()
                        .fill(.black)
                        .frame(width: 90, height: 55)
                )
        }
    }
}

struct CardCircle_Previews: PreviewProvider {
    static var previews: some View {
        CardCircle()
    }
}
