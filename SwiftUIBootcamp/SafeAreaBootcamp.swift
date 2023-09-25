//
//  SafeAreaBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 25/09/23.
//

import SwiftUI

struct SafeAreaBootcamp: View {
    var body: some View {
        ZStack {
            
            // background
            Color.teal
                .ignoresSafeArea()
            
            // foreground
            VStack {

                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    .background(.red)
                Spacer()
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    .background(.red)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            
        }
    }
}

struct SafeAreaBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaBootcamp()
    }
}

// daripada membuat padding pada konten tsb untuk berada di safe area.
//  mending menggunakan ZStack
