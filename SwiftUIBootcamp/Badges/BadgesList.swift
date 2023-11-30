//
//  BadgesList.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 30/11/23.
//

import SwiftUI

struct BadgesList: View {
    var body: some View {
        List {
            Text("Hello, World!")
                .badge("New Item")
            Text("Hello, World!")
            Text("Hello, World!")
            Text("Hello, World!")
            Text("Hello, World!")
        }
    }
}

#Preview {
    BadgesList()
}
