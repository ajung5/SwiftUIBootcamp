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
            List(users, id: \.self) { item in
                NavigationLink(destination: UserProfileView(user: item)) {
                    UserListView(user: item)
                }
                
            }
            .navigationTitle("Users")
            .listStyle(InsetListStyle())
        }
    }
}

#Preview {
    ModelBootcamp()
}
