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
            
            myItem
        }
    }
    
    // ekstrak view diluar body
    // jika menggunakan itu, hanya jika loogic nya tidaka akan berubah
    // dan data di dalam subview teersebut akan bersifat static
    
    var myItem: some View {
        VStack  {
            Text("1")
            Text("Apple")
        }
        .padding()
        .background(.mint)
        .cornerRadius(10)
    }
}

struct ExtractSubviewsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ExtractSubviewsBootcamp()
    }
}
