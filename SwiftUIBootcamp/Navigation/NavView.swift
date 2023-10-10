//
//  NavView.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 10/10/23.
//

import SwiftUI

struct NavView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                Text("Hello World")
                Text("Hello World")
                Text("Hello World")
            }
            .navigationTitle("All Inboxes")
            .navigationBarTitleDisplayMode(.automatic)
        }
    }
}

#Preview {
    NavView()
}
