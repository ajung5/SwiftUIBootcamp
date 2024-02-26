//
//  NavigationSplitViewBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 26/02/24.
//

import SwiftUI

// navigation split view -> ipad, macOS, VisionOS

struct NavigationSplitViewBootcamp: View {
    
    @State private var visibility: NavigationSplitViewVisibility = .all
    @State private var selectedCategory: KategoriMakanan? = nil
    @State private var selectedFruit: Fruit? = nil
    
    var body: some View {
        NavigationSplitView(columnVisibility: $visibility) {
            List(KategoriMakanan.allCases, id: \.rawValue) { category in
                Button(category.rawValue.capitalized) {
                    selectedCategory = category
                }
            }
            .navigationTitle("Categories")
        } content: {
            if let selectedCategory {
                Group {
                    switch selectedCategory {
                    case .fruits:
                        List(Fruit.allCases, id: \.rawValue) { fruit in
                            Button(fruit.rawValue.capitalized) {
                                selectedFruit = fruit
                            }
                        }
                    case .vegetables:
                        EmptyView()
                    case .meats:
                        EmptyView()
                    }
                }
                .navigationTitle(selectedCategory.rawValue.capitalized)
            } else {
                Text("Select a Category to begin")
            }
        } detail: {
            if let selectedFruit {
                Text("You selected: \(selectedFruit.rawValue.capitalized)")
                    .font(.largeTitle)
                    .navigationTitle(selectedFruit.rawValue.capitalized)
            } else {
                Text("Select Somethinng")
            }
        }

    }
}

#Preview {
    NavigationSplitViewBootcamp()
}

enum KategoriMakanan: String, CaseIterable {
    case fruits,
    vegetables,
    meats
}

enum Fruit: String, CaseIterable {
    case apple, banana, orange
}
