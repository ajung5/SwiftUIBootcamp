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
    @State var veggies: [String] = [
        "Zucchini",
        "Cherry",
        "Green beans",
        "Asparagus",
        "Cherry tomatoes",
        "Baby corn",
        "Snap peas"
    ]
    
    var body: some View {
        NavigationView {
            List {
                // # frruits section
                Section {
                    ForEach(fruits, id: \.self) { item in
                        Text(item)
                            .foregroundStyle(Color.white)
                    }
                    // salah satu fitur yang powerful di list adalah dia bisa membuat/hapus list item didalam list
                    
                    // buat func diluar. untuk membuat clean code
                    .onDelete (perform: delete)
                    .onMove(perform: move)
                    .listRowBackground(Color.gray)
                    
                } header: {
                    HStack {
                        Text("Fruits")
                        Image(systemName: "flame.fill")
                    }
                    .font(.headline)
                    .foregroundStyle(.blue)
                }
                
                // # Veggiees section
                Section(content: {
                    ForEach(veggies, id:\.self) { item in
                        Text(item.capitalized)
                            .font(.subheadline)
                    }
                }, header: {
                    Text("Vegetables")
                        .font(.headline)
                        .foregroundStyle(.blue)
                })

            }
            .listStyle(InsetGroupedListStyle())
            .navigationTitle("Grocery List")
            .toolbar(content: {
                ToolbarItem(placement: .topBarTrailing) {
                    EditButton()
                }
                
                ToolbarItem(placement: .topBarLeading) {
                    addButton
                }
            })
            .tint(.red)
        }
    }
    
    var addButton: some View {
        Button("Add") {
            add()
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
    
    // func addd
    func add() {
        fruits.append("Melon ")
    }
}

#Preview {
    ListBootcamp()
}
