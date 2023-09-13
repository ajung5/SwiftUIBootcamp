//
//  InitializerBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 13/09/23.
//

import SwiftUI

struct InitializerBootcamp: View {
    
    // kita bisa menyimpan variabel diluar var body
    // tujuan nya untuk memudahkan pengambilan data, agar kita tidak perlu melakukan pengeditan jika ingin mengubah variabel tsb.
    
    let backgroundColor: Color
    let count: Int
    let title: String
    
    // sama aja kaya diatass, cuma ini mah bisa di kustom lagi
    init(count: Int, title: String) {
        
        self.count = count
        self.title = title
        
        if title == "Apples" {
            self.backgroundColor = .red
        } else {
            self.backgroundColor = .indigo
        }
    }
    
    
    var body: some View {
        
        VStack (spacing: 10) {
            
            Text("\(count)") // untuk menampilkan tipe data Int pada kolom string, gunakan \()
                .font(.largeTitle)
                .foregroundColor(.white)
                .underline()
            
            Text(title)
                .font(.headline)
                .foregroundColor(.white)
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(10)
    }
}

struct InitializerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        // untuk menampilkan pada preview, parameter nya sama dengan variabel yg disebutkan sebelum var body
        // InitializerBootcamp(backgroundColor: .indigo, count: 22, title: "Grapes")
        
        // memanggil function pada init diatas
        InitializerBootcamp(count: 33, title: "Apples")
    }
}
