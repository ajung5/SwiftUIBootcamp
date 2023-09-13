//
//  EnumBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 13/09/23.
//

import SwiftUI

struct EnumBootcamp: View {
    
    // kita bisa menyimpan variabel diluar var body
    // tujuan nya untuk memudahkan pengambilan data, agar kita tidak perlu melakukan pengeditan jika ingin mengubah variabel tsb.
    
    let backgroundColor: Color
    let count: Int
    let title: String
    
    // sama aja kaya diatass, cuma ini mah bisa di kustom lagi
    init(count: Int, namaBuah: Fruit) {
        
        self.count = count
        
        if namaBuah == .apple {
            self.title = "Apples"
            self.backgroundColor = .red
        } else if namaBuah == .orange {
            self.title = "Oranges"
            self.backgroundColor = .orange
        } else {
            self.title = "Grapes"
            self.backgroundColor = .indigo
        }
    }
    
    // instead typing manuall the title, kita buatkan aja kustom enum
    
    enum Fruit {
        case apple
        case orange
        case grape
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
        .frame(maxWidth: .infinity, maxHeight: 125)
        .background(backgroundColor)
        .cornerRadius(10)
        .padding(.horizontal, 5)
    }
}

struct EnumBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        
        // untuk menampilkan pada preview, parameter nya sama dengan variabel yg disebutkan sebelum var body
        // InitializerBootcamp(backgroundColor: .indigo, count: 22, title: "Grapes")
        
        // memanggil function pada init diatas
        HStack {
            EnumBootcamp(count: 11, namaBuah: .grape)
            EnumBootcamp(count: 44, namaBuah: .orange)
            EnumBootcamp(count: 100, namaBuah: .apple)
        }
        .padding(.horizontal, 15) // padding pada preview
        
    }
}
