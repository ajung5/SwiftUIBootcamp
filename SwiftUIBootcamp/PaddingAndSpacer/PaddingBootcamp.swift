//
//  Padding.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 12/09/23.
//

import SwiftUI

struct PaddingBootcamp: View {
    var body: some View {
        
        // dengan menggunakan padding, jadi ga perlu lagi pake frame. bisa lebih dynamic
        VStack (alignment: .leading) {
            // text title
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                //.underline(true, color: .gray)
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom, 20)
            
                // Menambahkan underline
                .background(
                    Color.gray
                        .frame(height: 5)
                        .offset(y: 14)
                )
                
            
            // description text
            Text("These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided")
                .foregroundColor(.secondary)
        }
        
        .padding()
        .padding(.vertical, 10)
        .background(
            Color.white
                .cornerRadius(10)
                .shadow(color: .black.opacity(0.3),
                        radius: 10,
                        x: 0.0, y: 10)
        )
        .padding(.horizontal, 55)
    }
}

struct Padding_Previews: PreviewProvider {
    static var previews: some View {
        PaddingBootcamp()
    }
}
