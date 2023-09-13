//
//  ForEach.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 13/09/23.
//

import SwiftUI

struct ForEachBootcamp: View {
    var body: some View {
        VStack {
            ForEach(0..<10) { index in
                HStack {
                    Circle()
                        .frame(width: 30, height: 30)
                    Text("Index ke: \(index)")
                }
            }
        }
    }
}

struct ForEachBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ForEachBootcamp()
    }
}
