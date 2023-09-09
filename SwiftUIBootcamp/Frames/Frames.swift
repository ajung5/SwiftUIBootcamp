//
//  Frames.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 09/09/23.
//

import SwiftUI

struct Frames: View {
    var body: some View {
        
        // untuk mengatur poosisi frame bisa menggunakan alignment pada modifier frame
        Text("Cum sociis natoque penatibus et magnis")
            .background(Color.purple)
            .frame(height: 150)
            .background(Color.mint)
            .frame(width: 175)
            .background(Color.gray)
            .frame(maxWidth: .infinity, alignment: .center)
            .background(Color("skyBlue"))
            .frame(height: 450, alignment: .bottomLeading)
            .background(Color.black)
            .frame(maxHeight: .infinity)
            .background(Color.brown)
    }
}

struct Frames_Previews: PreviewProvider {
    static var previews: some View {
        Frames()
    }
}
