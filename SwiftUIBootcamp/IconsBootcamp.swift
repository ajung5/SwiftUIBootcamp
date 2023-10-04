//
//  IconsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 08/09/23.
//

import SwiftUI

struct IconsBootcamp: View {
    var body: some View {
        
        // system icon adalah icon yang disediakan oleh apple secara default
        // system icon sama halnya dengan text, jadi bisa menggunakan modifier seperti text
        VStack {
            HStack {
                Image(systemName: "globe")
                    .font(.title)
                
                Image(systemName: "heart.fill")
                    .font(.system(size: 36)) // menggunakan custom size modifier
                    .foregroundColor(Color("skyBlue"))
            }
            
            HStack {
                Image(systemName: "seal.fill")
                    .font(.system(size: 150))
                    .foregroundColor(Color.teal)
                
                Image(systemName: "seal.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    
                    // membuat gradasi pada system image
                    .foregroundStyle(.radialGradient(colors: [Color.red,
                                                              Color.orange,
                                                              Color.yellow,
                                                              Color.green,
                                                              Color.blue,
                                                              Color.indigo,
                                                              Color.purple],
                                                     center: .center,
                                                     startRadius: 10,
                                                     endRadius: 90))
            }
            
            Image(systemName: "checkmark.seal.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .foregroundColor(Color.accentColor)
                .frame(width: 150, height: 150)
            
            HStack {
                Image(systemName: "person.fill.badge.plus")
                    // jika tidak menggunakan modifier ".renderingmode", maka icon tidak berwarna.
                    //.renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                .frame(width: 150, height: 150)
                
                Image(systemName: "person.fill.badge.plus")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                .frame(width: 150, height: 150)
            }
        }
    }
}

#Preview {
    IconsBootcamp()
}
