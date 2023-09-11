//
//  OverlayIconInstagram.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 10/09/23.
//

import SwiftUI

struct OverlayIconInstagram: View {
    var body: some View {
        VStack {
            HStack {
                ZStack{
                    RoundedRectangle(cornerRadius: 25)
                        .fill(
                            LinearGradient(colors: [Color("Iris"),
                                                    Color("VividCerise"),
                                                    Color("Jasmine"),
                                                    Color("PrincentonOrange"),
                                                    Color("Grape")],
                                           startPoint: .trailing,
                                           endPoint: .bottomLeading)
                        )
                        .overlay(
                            RoundedRectangle(cornerRadius: 25)
                                .stroke(lineWidth: 10)
                                .fill(.white)
                                .frame(width: 130, height: 130)
                                .overlay(
                                    Circle()
                                        .stroke(lineWidth: 10)
                                        .fill(.white)
                                        .background(
                                            Circle()
                                                .fill(.clear)
                                                .frame(width: 100, height: 100)
                                                .overlay(
                                                    Circle()
                                                        .fill(.white)
                                                        .frame(width: 20, height: 20)
                                                    , alignment: .topTrailing
                                                )
                                        )
                                        .frame(width: 75, height: 75)
                                )
                        )
                        .frame(width: 175, height: 175)
                    
                    RoundedRectangle(cornerRadius: 25)
                        .fill(.clear)
                        .overlay(
                            Ellipse()
                                .fill(.red)
                                .foregroundColor(.white)
                                .frame(width: 80, height: 60)
                                .overlay(
                                    Text("298")
                                        .font(.title)
                                        .foregroundColor(.white)
                                )
                            ,alignment: .topTrailing
                        )
                    .frame(width: 225, height: 225)
                }
                
                ZStack{
                    RoundedRectangle(cornerRadius: 25)
                        .fill(
                            LinearGradient(colors: [Color("Iris"),
                                                    Color("VividCerise"),
                                                    Color("Jasmine"),
                                                    Color("PrincentonOrange"),
                                                    Color("Grape")],
                                           startPoint: .trailing,
                                           endPoint: .bottomLeading)
                        )
                        .overlay(
                            RoundedRectangle(cornerRadius: 25)
                                .stroke(lineWidth: 10)
                                .fill(.white)
                                .frame(width: 130, height: 130)
                                .overlay(
                                    Circle()
                                        .stroke(lineWidth: 10)
                                        .fill(.white)
                                        .background(
                                            Circle()
                                                .fill(.clear)
                                                .frame(width: 100, height: 100)
                                                .overlay(
                                                    Circle()
                                                        .fill(.white)
                                                        .frame(width: 20, height: 20)
                                                    , alignment: .topTrailing
                                                )
                                        )
                                        .frame(width: 75, height: 75)
                                )
                        )
                        .frame(width: 175, height: 175)
                    
                    RoundedRectangle(cornerRadius: 25)
                        .fill(.clear)
                        .overlay(
                            Ellipse()
                                .fill(.red)
                                .foregroundColor(.white)
                                .frame(width: 80, height: 60)
                                .overlay(
                                    Text("298")
                                        .font(.title)
                                        .foregroundColor(.white)
                                )
                            ,alignment: .topTrailing
                        )
                    .frame(width: 225, height: 225)
                }
            }
        }
    }
}

struct OverlayIconInstagram_Previews: PreviewProvider {
    static var previews: some View {
        OverlayIconInstagram()
    }
}
