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
}

struct StacksBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StacksBootcamp()
    }
}
