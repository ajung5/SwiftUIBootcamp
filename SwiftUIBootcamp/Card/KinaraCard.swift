//
//  KinaraCard.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 11/09/23.
//

import SwiftUI

struct KinaraCard: View {
    
    private let cardAndImageWidth: CGFloat = 300
    private let cardHeight: CGFloat = 350
    private let imageHEight: CGFloat = 275
    private let cornerRadius: CGFloat = 15
    
    var body: some View {
        ZStack {
            Color.teal.ignoresSafeArea()
            VStack {
                Text("Hello, World!")
                    .font(.title)
                    .foregroundColor(.white)
                ZStack {
                    RoundedRectangle(cornerRadius: cornerRadius)
                        .strokeBorder(Color.gray, lineWidth: 1)
                        .frame(width: cardAndImageWidth, height: cardHeight)
                        .background(
                            RoundedRectangle(cornerRadius: cornerRadius)
                                .fill(.white)
                        )
                    VStack(alignment: .leading, spacing: 10) {
                        Image("Kinara")
                            .resizable()
                            .scaledToFill()
                            .frame(width: cardAndImageWidth, height: imageHEight)
                            .clipped()
                        LazyVStack(alignment: .leading, spacing: 2) {
                            Text("Kinara Almahyra Prayasti")
                                .font(.system(size: 22))
                                .fontWeight(.bold)
                                .multilineTextAlignment(.center)
                                .lineLimit(nil)
                            Text("I Was Born in 30th August 2023")
                                .font(.headline)
                                .foregroundColor(.gray)
                        }
                        .padding(.horizontal, 12)
                        .padding(.bottom)
                    }
                    .frame(width: cardAndImageWidth, height: cardHeight)
                    .cornerRadius(cornerRadius)
                }
            }
        }
    }
}

struct KinaraCard_Previews: PreviewProvider {
    static var previews: some View {
        KinaraCard()
    }
}
