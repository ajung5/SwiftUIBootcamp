//
//  GridViewBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 26/02/24.
//

import SwiftUI

struct GridViewBootcamp: View {
    var body: some View {
        Grid {
            GridRow {
                Text("1")
                Text("1")
                Text("1")
            }
            GridRow {
                Text("2")
                Text("2")
                Text("2")
            }
            Text("1")
            Text("2")
            Text("3")
            Text("4")
            Text("6")
            Text("7")
        }
    }
}

#Preview {
    GridViewBootcamp()
}
