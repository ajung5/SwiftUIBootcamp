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
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        // modifier
            // .font(.title)
            // .fontWeight(.bold)
        // kita bisa menuliskan langsung modifier
            .bold()
            .underline(color: Color.primary)
            .strikethrough(color: Color.red)
            .font(.system(size: 32, weight: .semibold, design: .rounded))
    }
}

struct TextBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextBootcamp()
    }
}
