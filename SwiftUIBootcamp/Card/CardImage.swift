//
//  CardImage.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 01/03/24.
//

import SwiftUI

struct CardImage: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 16.0) {
            Image("rajaAmpat")
                //.renderingMode(.template)
                .resizable()
                .frame(width: 250, height: 250)
                .scaledToFill()
                .foregroundStyle(.teal)
            VStack(alignment: .leading) {
                Text("Hello")
                HStack(spacing: 4){
                    Image(systemName: "clock")
                    Text("Lorem Ipsum")               
                }
                .foregroundStyle(.gray)
                .padding(.bottom, 16)
            }
            .padding(.horizontal, 8)
        }
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 15))
        .shadow(radius: 8)
    }
}

#Preview {
    CardImage()
}
