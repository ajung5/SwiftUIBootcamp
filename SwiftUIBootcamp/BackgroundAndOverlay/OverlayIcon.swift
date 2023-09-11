//
//  OverlayIcon.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 10/09/23.
//

import SwiftUI

struct OverlayIcon: View {
    var body: some View {
        VStack {
            Image(systemName: "message")
                .font(.system(size: 75))
                .foregroundColor(.white)
            
                // overlay icon telpon
                .overlay(
                    Image(systemName: "phone")
                        .foregroundColor(.white)
                        .font(.system(size: 40))
                        .padding(.bottom, 6.0)
                )
            
                // patokan untuk overlay jumlah notif
                .background(
                    RoundedRectangle(cornerRadius:  25)
                        .fill(.clear)
                        //.stroke(.gray, lineWidth: 2)
                        .frame(width: 160, height: 165)
                    // overlay untuk icon notifikasi
                    .overlay(
                        Circle()
                            .fill(Color.red)
                            .frame(width: 50, height: 50)
                            .overlay(
                                Text("234")
                                    .foregroundColor(.white)
                            )
                            ,alignment: .topTrailing
                    )
                )
            
                // background message icon hijau
                .background(
                    RoundedRectangle(cornerRadius: 25)
                        //.stroke(.blue, lineWidth: 5)
                        .fill(Color.green)
                        .frame(width: 130, height: 120)
            )
            
            Text("WhatssApp")
                .font(.title)
                .fontWeight(.semibold)
                .padding(.vertical, 7)
            
            Spacer()
                .frame(height: 30)
            
            
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
                .frame(width: 175, height: 175)
                .overlay(
                    RoundedRectangle(cornerRadius: 25)
                        .stroke(lineWidth: 10)
                        .fill(.white)
                        .frame(width: 130, height: 130)
                        .background(
                            Circle()
                                .stroke(lineWidth: 10)
                                .fill(.white)
                                .frame(width: 75, height: 75)
                        )
                        .overlay(
                            Circle()
                                .fill(.white)
                                .frame(width: 20, height: 20)
                            , alignment: .topTrailing
                        )
                        
                )
                .background(
                    RoundedRectangle(cornerRadius: 25)
                        .fill(.clear)
                        .frame(width: 200, height: 200)
                    
                        .overlay(
                            Circle()
                                
                                .fill(.red)
                                .frame(width: 50, height: 50)
                            ,alignment: .topTrailing
                            
                        )
                )
        }
    }
}

struct OverlayIcon_Previews: PreviewProvider {
    static var previews: some View {
        OverlayIcon()
    }
}
