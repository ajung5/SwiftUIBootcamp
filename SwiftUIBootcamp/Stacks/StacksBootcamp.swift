//
//  StacksBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 11/09/23.
//

import SwiftUI

struct StacksBootcamp: View {
    
    // Vstack -> Vertical
    // Hstack -> Horizontal
    // Zstack -> zIndex (back to front)
    
    var body: some View {
        // Vstack
        VStack {
            Text("VStack -> Virtual Stack")
                .font(.headline)
                .fontWeight(.bold)
                .padding(.init(top: 20, leading: 10, bottom: 0, trailing: 9)) // custom padding pada tiap sisi
            Circle()
                .fill(Color.red)
                .frame(width: 100, height: 100)
            Circle()
                .fill(Color.yellow)
                .frame(width: 100, height: 100)
            Circle()
                .fill(Color.green)
                .frame(width: 100, height: 100)
            
            // Hstack -> Hoorizontal
            VStack {
                Text("HStack -> Horizontal Stack")
                    .font(.headline)
                    .fontWeight(.bold)
                    .padding(.init(top: 20, leading: 10, bottom: 0, trailing: 9)) // custom padding pada tiap sisi
                    
                HStack{
                    
                    Circle()
                        .fill(Color.red)
                        .frame(width: 100, height: 100)
                    Circle()
                        .fill(Color.yellow)
                        .frame(width: 100, height: 100)
                    Circle()
                        .fill(Color.green)
                        .frame(width: 100, height: 100)
                }
            }
            Text("ZStack -> zIndex Stack")
                .font(.headline)
                .fontWeight(.bold)
                .padding(.init(top: 20, leading: 10, bottom: 0, trailing: 9)) // custom padding pada tiap sisi
            ZStack{
                // Dalam zstack, komponen paling bawah berada diposisi paling depan dalam layer
                // Zstack tidak mempunyai spacing
                Circle()
                    .fill(Color.red)
                    .frame(width: 150, height: 150)
                Circle()
                    .fill(Color.yellow)
                    .frame(width: 120, height: 120)
                Circle()
                    .fill(Color.green)
                    .frame(width: 90, height: 90)
            }
        }
    }
}

struct StacksBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StacksBootcamp()
    }
}
