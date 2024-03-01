//
//  CreditCardBank.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 01/03/24.
//

import SwiftUI

struct CreditCardBank: View {
    var body: some View {
        ZStack{
            // MARK: Background
            Image("wavy")
                .resizable()
                .scaledToFill()
                .frame(width: 300, height: 175)
                .clipShape(RoundedRectangle(cornerRadius: 15))
        }
    }
}

#Preview {
    CreditCardBank()
}
