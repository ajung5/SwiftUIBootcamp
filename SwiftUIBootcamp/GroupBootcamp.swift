//
//  GroupBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 04/02/24.
//

import SwiftUI

struct GroupBootcamp: View {
    var body: some View {
        VStack(spacing: 30) {
            Text("Hello World!")
            
            // dengan menggunakan grup, tidak usah me render stack lagi
            // jadi lebih simple
            Group {
                Text("Hello World!")
                Text("Hello World!")
            }
            .font(.headline)
            .foregroundStyle(.darkCharcoal)
        }
        .foregroundStyle(.red)
        .font(.title)
    }
}

#Preview {
    GroupBootcamp()
}
