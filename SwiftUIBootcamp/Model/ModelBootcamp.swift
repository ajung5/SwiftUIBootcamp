//
//  ModelBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 17/10/23.
//

import SwiftUI

struct ModelBootcamp: View {

    var body: some View {
        NavigationStack {
            List {
                UserListView()
            }
            .navigationTitle("Users")
            .listStyle(InsetListStyle())
        }
    }
}

#Preview {
    ModelBootcamp()
}
