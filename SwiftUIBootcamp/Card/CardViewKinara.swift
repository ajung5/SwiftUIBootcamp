//
//  CardViewKinara.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 11/09/23.
//

import SwiftUI

struct CardViewKinara: View {
    var body: some View {
        ZStack {
            Color("PrincentonOrange")
                .ignoresSafeArea()
            VStack(spacing: 0) {
                Text("Hello, World!")
                    .font(.title)
                    .foregroundColor(.white)
                ZStack {
                    
                }
            }
        }
    }
}

struct CardViewKinara_Previews: PreviewProvider {
    static var previews: some View {
        CardViewKinara()
    }
}
