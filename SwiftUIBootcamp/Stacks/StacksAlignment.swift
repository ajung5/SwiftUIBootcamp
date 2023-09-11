//
//  StacksAlignment.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 11/09/23.
//

import SwiftUI

struct StacksAlignment: View {
    var body: some View {
        
        // alignment : untuk meratakan semua koomponen yang ada didalam stack tersebut
        // spacing: mengatur jarak pada tiap komponen
        // spacing bersifat opsional, jika ingin menggunakan default value pada spacing. maka jangan digunakan
        VStack(alignment: .center, spacing: 0, content:{
            Rectangle()
                .fill(Color("Iris"))
                .frame(width: 150, height: 150)
            Rectangle()
                .fill(Color("PrincentonOrange"))
                .frame(width: 100, height: 100)
            Rectangle()
                .fill(Color("VividCerise"))
                .frame(width: 50, height: 50)
        })
        VStack(alignment: .center, spacing: 0, content:{
            Rectangle()
                .fill(Color("Iris"))
                .frame(width: 150, height: 150)
            Rectangle()
                .fill(Color("PrincentonOrange"))
                .frame(width: 100, height: 100)
            Rectangle()
                .fill(Color("VividCerise"))
                .frame(width: 50, height: 50)
        })
    }
}

struct StacksAlignment_Previews: PreviewProvider {
    static var previews: some View {
        StacksAlignment()
    }
}
