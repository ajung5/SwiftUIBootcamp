//
//  ContentUnavailableBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 01/03/24.
//

import SwiftUI

struct ContentUnavailableBootcamp: View {
    var body: some View {
        ContentUnavailableView(
            "Oops Under Maintenance",
            systemImage: "wifi.slash",
            description: Text("Lorem Ipsum")
        )
    }
}

#Preview {
    ContentUnavailableBootcamp()
}
