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
            .font(.title)
    }
}

struct TextBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextBootcamp()
    }
}
