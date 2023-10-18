//
//  HomeViewBuah.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 17/10/23.
//

import SwiftUI

struct HomeViewBuah: View {
    
    var body: some View {
        NavigationStack {
            List(fruitsArray, id: \.self) { item in
                NavigationLink(destination: FruitsDetail(fruit: item)) {
                    FruitsListView(fruit: item)
                }
            }
            .navigationTitle("Fruits")
            .listStyle(InsetListStyle())
        }
    }
}

#Preview {
    HomeViewBuah()
}
