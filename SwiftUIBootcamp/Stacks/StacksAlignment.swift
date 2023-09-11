//
//  StacksAlignment.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 11/09/23.
//

import SwiftUI

struct StacksAlignment: View {
    
    let radius: CGFloat = 10
    
    var body: some View {
        
        // alignment : untuk meratakan semua koomponen yang ada didalam stack tersebut
        // spacing: mengatur jarak pada tiap komponen
        // spacing bersifat opsional, jika ingin menggunakan default value pada spacing. maka jangan digunakan
        VStack(spacing: 5, content:{
            Rectangle()
                .fill(Color("Iris"))
                .frame(width: 150, height: 150)
            Rectangle()
                .fill(Color("PrincentonOrange"))
                .frame(width: 100, height: 100)
            Rectangle()
                .fill(Color("VividCerise"))
                .frame(width: 50, height: 50)
                .padding(.bottom, 25)
            
            // alignment pada ZStack, secara default .center
            ZStack(alignment: .top, content: {
                RoundedRectangle(cornerRadius: 5)
                    .fill(Color.black)
                    .frame(width: 200, height: 215)
                    .overlay(
                        Rectangle()
                            .fill(Color("erieBlack"))
                            .frame(width: 100, height: 75)
                            .padding(.top, radius)
                            .cornerRadius(radius)
                            .padding(.top, -radius)
                            .padding(.init(top: 0, leading: 25, bottom: 0, trailing: 0))
                        , alignment: .init(horizontal: .leading, vertical: .top)
                    )
                    .overlay(
                        Text("HD")
                            .foregroundColor(.white)
                            .fontWeight(.semibold)
                            .padding(.init(top: 15, leading: 0, bottom: 0, trailing: 15))
                        , alignment: .topTrailing
                    )
                   
                    .overlay(
                        Rectangle()
                            .fill(Color("VividCerise"))
                            .frame(width: 150, height: 120)
                            .padding(.bottom, radius)
                            .cornerRadius(radius)
                            .padding(.bottom, -radius)
                        , alignment: .bottom
                    )
                
                    .overlay(
                        Rectangle()
                            .fill(.white)
                            .frame(width: 10, height: 10)
                            .padding(.init(top: 0, leading: 15, bottom: 15, trailing: 8))
                        , alignment: .bottomTrailing
                    )
                
                
                Rectangle()
                    .fill(Color("silver"))
                    .frame(width: 100, height: 75)
                    .padding(.top, radius) //Add some padding to the top of your view
                    .cornerRadius(radius) // Round all corners with .cornerRadius(_:)
                    .padding(.top, -radius) // Remove the padding by applying negative padding of the same value
                    .overlay(
                        Rectangle()
                            .fill(Color.black)
                            .frame(width: 30, height: 60)
                            .padding(.init(top: 2, leading: 25, bottom: 0, trailing: 2))
                    )
            })
        })
    }
}

struct StacksAlignment_Previews: PreviewProvider {
    static var previews: some View {
        StacksAlignment()
    }
}
