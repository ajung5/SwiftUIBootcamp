//
//  ExtractSubviewsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 26/09/23.
//

import SwiftUI

struct ExtractSubviewsBootcamp: View {
    var body: some View {
        ZStack {
            Color("VividCerise")
                .ignoresSafeArea()
            
            contentLayer
            
            
        }
    }
    
    // ekstrak view diluar body
    // jika menggunakan itu, hanya jika loogic nya tidaka akan berubah
    // dan data di dalam subview teersebut akan bersifat static
    
    var contentLayer: some View {
        HStack {
            MyItem(title: "Orange", count: 2, color: .gray)
            MyItem(title: "Grape", count: 4, color: .green)
        }
    }
    
}

struct ExtractSubviewsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ExtractSubviewsBootcamp()
    }
}


// jadi, jika ingin subview tersebut bersifat dinamis. maka lakukan ekstrak subview dengan cara:
// command + klik => extract subview
// jadi jika mengekstrak dengan mempunyai body sendiri, subview tersebut akan memiliki sifat yang sama dengan main body

struct MyItem: View {
    let title: String
    let count: Int
    let color: Color
    
    var body: some View {
        VStack  {
            Text("\(count)")
            Text(title)
        }
        .padding()
        .background(color)
        .cornerRadius(10)
    }
}
