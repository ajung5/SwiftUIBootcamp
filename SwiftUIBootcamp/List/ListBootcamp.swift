//
//  ListBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 10/10/23.
//

import SwiftUI

struct ListBootcamp: View {
    
    @State var fruits: [String] = [
        "Apple", "Banana", "Grape", "Peach", "Mango"
    ]
    
    var body: some View {
        List {
            Section {
                ForEach(fruits, id: \.self) { item in
                    Text(item)
                }
                // salah satu fitur yang powerful di list adalah dia bisa membuat/hapus list item didalam list
                .onDelete(perform: { indexSet in
                    fruits.remove(atOffsets: indexSet)
                })
            } header: {
                Text("Fruits")
                    .font(.title)
            }
        }
    }
}

#Preview {
    ListBootcamp()
}
