//
//  ButtonBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 25/09/23.
//

import SwiftUI

struct ButtonBootcamp: View {
    
    @State var title = "Landing Page"
    
    var body: some View {
        VStack(spacing: 20) {
            Text(title)
            
            // Contoh Button #1 (Default)
            Button("Login") {
                self.title = "Anda Berhasil Login"
            }
            .accentColor(.green) // accentcolor bakal di ganti di ios versi selanjutnya
        }
    }
}

struct ButtonBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ButtonBootcamp()
    }
}
