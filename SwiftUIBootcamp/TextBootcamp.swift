//
//  TextBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 06/09/23.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        // component
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            // modifier
                // .font(.title)
                // .fontWeight(.bold)
            // kita bisa menuliskan langsung modifier
                .bold()
                .underline(color: Color.primary)
                .strikethrough(color: Color.red)
            .font(.system(size: 32, weight: .semibold, design: .rounded))
            
            .padding()
            
            Text("Text Rata Tengah")
                .font(.headline)
            Text("Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur")
                .multilineTextAlignment(.center)
                .baselineOffset(1.5) // mengatur spasi
                .border(.black)
            
            Text("Text Rata kiri")
                .font(.headline)
                .padding(.top)
            Text("Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur")
                .multilineTextAlignment(.leading)
                .padding(.leading, 15) // memberi padding ke kiri sebanyak 15 
            
            Text("Text Rata kanan")
                .font(.headline)
                .padding(.top)
            Text("Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur")
                .multilineTextAlignment(.trailing)
                .padding(.trailing, 15) // memberi padding ke kanan sebanyak 15
                .border(.black)
        }
        
    }
}

struct TextBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextBootcamp()
    }
}
