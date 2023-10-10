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
        NavigationView {
            List {
                Section {
                    ForEach(fruits, id: \.self) { item in
                        Text(item)
                    }
                    // salah satu fitur yang powerful di list adalah dia bisa membuat/hapus list item didalam list
                    
                    // buat func diluar. untuk membuat clean code
                    .onDelete (perform: delete)
                    .onMove(perform: move)
                    
                } header: {
                    Text("Fruits")
                        .font(.title)
                }
            }
            .navigationTitle("Grocery List")
            .toolbar(content: {
                ToolbarItem(placement: .topBarTrailing) {
                    EditButton()
                }
            })
        }
    }
    
    // buat func delete. untuk membuat clean code
    func delete(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
    // buat func move. untuk membuat clean code
    func move(indices: IndexSet, newOffset: Int) {
        fruits.move(fromOffsets: indices, toOffset: newOffset)
    }
}

#Preview {
    ListBootcamp()
}
