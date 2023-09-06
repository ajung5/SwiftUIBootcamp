//
//  ShapeLoginPage.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 06/09/23.
//

import SwiftUI

struct ShapeLoginPage: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color.teal)
                .ignoresSafeArea()
            VStack (spacing: 8){
                Circle()
                    .stroke(Color.black, lineWidth: 2)
                    .frame(width: 44, height: 44)
                Image(systemName: "square.and.arrow.down.on.square")
                Text("Haloo User")
                    .font(.headline)
                Text("Welcome to Our Apps")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                Capsule()
                    .fill(Color.green)
                    .frame(height: 44)
                    .overlay(Text("Sign Up"))
            }
            
            .padding()
            .frame(width: 300, height: 200)
            .background(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
        }
    }
}

struct ShapeLoginPage_Previews: PreviewProvider {
    static var previews: some View {
        ShapeLoginPage()
    }
}
