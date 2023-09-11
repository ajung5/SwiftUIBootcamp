//
//  CircleOverlay.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 10/09/23.
//

import SwiftUI

struct CircleOverlay: View {
    var body: some View {
        ZStack {
            Color.blue.ignoresSafeArea()

            VStack {
                Text("SwiftUI for iOS 14")
                    .bold()
            }
            .frame(width: 300, height: 200)
            .background(Color.white)
        }
    }
}

struct CircleOverlay_Previews: PreviewProvider {
    static var previews: some View {
        CircleOverlay()
    }
}
